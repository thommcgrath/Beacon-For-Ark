#tag Class
Protected Class HarvestRates
Inherits Beacon.ConfigGroup
	#tag Event
		Function GenerateConfigValues(SourceDocument As Beacon.Document, Profile As Beacon.ServerProfile) As Beacon.ConfigValue()
		  #Pragma Unused Profile
		  
		  Var Values() As Beacon.ConfigValue
		  
		  Values.Add(New Beacon.ConfigValue("CommandLineOption", "?", "UseOptimizedHarvestingHealth=" + If(Self.mUseOptimizedRates, "True", "False")))
		  
		  Var Engrams() As Beacon.Engram = Self.Engrams
		  For Each Engram As Beacon.Engram In Engrams
		    If Engram.ValidForDocument(SourceDocument) Then
		      Var ClassString As String = Engram.ClassString
		      Var Rate As Double = Self.mOverrides.Value(Engram, Self.RateAttribute)
		      Values.Add(New Beacon.ConfigValue(Beacon.ConfigFileGame, Beacon.ShooterGameHeader, "HarvestResourceItemAmountClassMultipliers=(ClassName=""" + ClassString + """,Multiplier=" + Rate.PrettyText + ")", "HarvestResourceItemAmountClassMultipliers:" + ClassString))
		    End If
		  Next
		  
		  Values.Add(New Beacon.ConfigValue(Beacon.ConfigFileGame, Beacon.ShooterGameHeader, "PlayerHarvestingDamageMultiplier=" + Self.mPlayerHarvestingDamageMultiplier.PrettyText))
		  Values.Add(New Beacon.ConfigValue(Beacon.ConfigFileGame, Beacon.ShooterGameHeader, "DinoHarvestingDamageMultiplier=" + Self.mDinoHarvestingDamageMultiplier.PrettyText))
		  Values.Add(New Beacon.ConfigValue(Beacon.ConfigFileGameUserSettings, Beacon.ServerSettingsHeader, "HarvestAmountMultiplier=" + Self.mHarvestAmountMultiplier.PrettyText))
		  Values.Add(New Beacon.ConfigValue(Beacon.ConfigFileGameUserSettings, Beacon.ServerSettingsHeader, "HarvestHealthMultiplier=" + Self.mHarvestHealthMultiplier.PrettyText))
		  Values.Add(New Beacon.ConfigValue(Beacon.ConfigFileGameUserSettings, Beacon.ServerSettingsHeader, "ClampResourceHarvestDamage=" + If(Self.mClampResourceHarvestDamage, "True", "False")))
		  
		  Return Values
		End Function
	#tag EndEvent

	#tag Event
		Function GetManagedKeys() As Beacon.ConfigKey()
		  Var Keys() As Beacon.ConfigKey
		  Keys.Add(New Beacon.ConfigKey("CommandLineOption", "?", "UseOptimizedHarvestingHealth"))
		  Keys.Add(New Beacon.ConfigKey(Beacon.ConfigFileGame, Beacon.ShooterGameHeader, "HarvestResourceItemAmountClassMultipliers"))
		  Keys.Add(New Beacon.ConfigKey(Beacon.ConfigFileGame, Beacon.ShooterGameHeader, "PlayerHarvestingDamageMultiplier"))
		  Keys.Add(New Beacon.ConfigKey(Beacon.ConfigFileGame, Beacon.ShooterGameHeader, "DinoHarvestingDamageMultiplier"))
		  Keys.Add(New Beacon.ConfigKey(Beacon.ConfigFileGameUserSettings, Beacon.ServerSettingsHeader, "HarvestAmountMultiplier"))
		  Keys.Add(New Beacon.ConfigKey(Beacon.ConfigFileGameUserSettings, Beacon.ServerSettingsHeader, "HarvestHealthMultiplier"))
		  Keys.Add(New Beacon.ConfigKey(Beacon.ConfigFileGameUserSettings, Beacon.ServerSettingsHeader, "ClampResourceHarvestDamage"))
		  Return Keys
		End Function
	#tag EndEvent

	#tag Event
		Sub MergeFrom(Other As Beacon.ConfigGroup)
		  Var Source As BeaconConfigs.HarvestRates = BeaconConfigs.HarvestRates(Other)
		  
		  Self.ClampResourceHarvestDamage = Source.ClampResourceHarvestDamage
		  Self.DinoHarvestingDamageMultiplier = Source.DinoHarvestingDamageMultiplier
		  Self.HarvestAmountMultiplier = Source.HarvestAmountMultiplier
		  Self.HarvestHealthMultiplier = Source.HarvestHealthMultiplier
		  Self.PlayerHarvestingDamageMultiplier = Source.PlayerHarvestingDamageMultiplier
		  Self.UseOptimizedRates = Source.UseOptimizedRates
		  
		  Var Engrams() As Beacon.Engram = Source.Engrams
		  For Each Engram As Beacon.Engram In Engrams
		    Self.Override(Engram) = Source.Override(Engram)
		  Next
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ReadDictionary(Dict As Dictionary, Identity As Beacon.Identity, Document As Beacon.Document)
		  #Pragma Unused Identity
		  #Pragma Unused Document
		  
		  // There is a slight performance impact here, since DoubleValue will check HasKey too,
		  // but this way is safe.
		  If Dict.HasKey("Harvest Amount Multiplier") Then
		    Self.mHarvestAmountMultiplier = Dict.DoubleValue("Harvest Amount Multiplier", 1.0)
		  ElseIf Dict.HasKey("Global") Then
		    Self.mHarvestAmountMultiplier = Dict.DoubleValue("Global", 1.0)
		  End If
		  
		  Self.mHarvestHealthMultiplier = Dict.DoubleValue("Harvest Health Multiplier", 1.0)
		  Self.mUseOptimizedRates = Dict.BooleanValue("Use Optimized Rates", False)
		  Self.mClampResourceHarvestDamage = Dict.BooleanValue("Clamp Resource Harvest Damage", False)
		  Self.mPlayerHarvestingDamageMultiplier = Dict.DoubleValue("Player Harvesting Damage Multiplier", 1.0)
		  Self.mDinoHarvestingDamageMultiplier = Dict.DoubleValue("Dino Harvesting Damage Multiplier", 1.0)
		  
		  If Dict.HasKey("Multipliers") Then
		    Var Overrides As Beacon.BlueprintAttributeManager = Beacon.BlueprintAttributeManager.FromSaveData(Dict.Value("Multipliers"))
		    If (Overrides Is Nil) = False Then
		      Self.mOverrides = Overrides
		    End If
		  ElseIf Dict.HasKey("Rates") Then
		    Var Rates As Dictionary = Dict.DictionaryValue("Rates", New Dictionary)
		    For Each Entry As DictionaryEntry In Rates
		      Try
		        Var Engram As Beacon.Engram = Beacon.ResolveEngram("", Entry.Key, "", Nil)
		        Self.mOverrides.Value(Engram, Self.RateAttribute) = Entry.Value.DoubleValue
		      Catch Err As RuntimeException
		      End Try
		    Next
		  Else
		    Var Rates As Dictionary = Dict.DictionaryValue("Overrides", New Dictionary)
		    For Each Entry As DictionaryEntry In Rates
		      Try
		        Var Engram As Beacon.Engram = Beacon.ResolveEngram("", "", Entry.Key, Nil)
		        Self.mOverrides.Value(Engram, Self.RateAttribute) = Entry.Value.DoubleValue
		      Catch Err As RuntimeException
		      End Try
		    Next
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub WriteDictionary(Dict As Dictionary, Document As Beacon.Document)
		  #Pragma Unused Document
		  
		  Dict.Value("Harvest Amount Multiplier") = Self.mHarvestAmountMultiplier
		  Dict.Value("Harvest Health Multiplier") = Self.mHarvestHealthMultiplier
		  Dict.Value("Multipliers") = Self.mOverrides.SaveData
		  Dict.Value("Use Optimized Rates") = Self.mUseOptimizedRates
		  Dict.Value("Clamp Resource Harvest Damage") = Self.mClampResourceHarvestDamage
		  Dict.Value("Player Harvesting Damage Multiplier") = Self.mPlayerHarvestingDamageMultiplier
		  Dict.Value("Dino Harvesting Damage Multiplier") = Self.mDinoHarvestingDamageMultiplier
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function ConfigName() As String
		  Return BeaconConfigs.NameHarvestRates
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor()
		  Self.mClampResourceHarvestDamage = False
		  Self.mDinoHarvestingDamageMultiplier = 1.0
		  Self.mHarvestAmountMultiplier = 1.0
		  Self.mHarvestHealthMultiplier = 1.0
		  Self.mPlayerHarvestingDamageMultiplier = 1.0
		  Self.mUseOptimizedRates = False
		  Self.mOverrides = New Beacon.BlueprintAttributeManager
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count() As UInteger
		  Return CType(Self.mOverrides.Count, UInteger)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Engrams() As Beacon.Engram()
		  Var References() As Beacon.BlueprintReference = Self.mOverrides.References
		  Var Results() As Beacon.Engram
		  For Each Reference As Beacon.BlueprintReference In References
		    If Not Reference.IsEngram Then
		      Continue
		    End If
		    
		    Var Blueprint As Beacon.Blueprint = Reference.Resolve
		    If (Blueprint Is Nil = False) And Blueprint IsA Beacon.Engram Then
		      Results.Add(Beacon.Engram(Blueprint))
		    End If
		  Next
		  Return Results
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromImport(ParsedData As Dictionary, CommandLineOptions As Dictionary, MapCompatibility As UInt64, Difficulty As BeaconConfigs.Difficulty, Mods As Beacon.StringList) As BeaconConfigs.HarvestRates
		  #Pragma Unused CommandLineOptions
		  #Pragma Unused MapCompatibility
		  #Pragma Unused Difficulty
		  
		  If ParsedData.HasAnyKey("HarvestAmountMultiplier", "HarvestHealthMultiplier", "PlayerHarvestingDamageMultiplier", "DinoHarvestingDamageMultiplier", "ClampResourceHarvestDamage", "HarvestResourceItemAmountClassMultipliers") = False And (CommandLineOptions Is Nil Or CommandLineOptions.HasKey("UseOptimizedHarvestingHealth") = False) Then
		    Return Nil
		  End If
		  
		  Var HarvestAmountMultiplier As Double = ParsedData.DoubleValue("HarvestAmountMultiplier", 1.0, True)
		  Var HarvestHealthMultiplier As Double = ParsedData.DoubleValue("HarvestHealthMultiplier", 1.0, True)
		  Var PlayerHarvestingDamageMultiplier As Double = ParsedData.DoubleValue("PlayerHarvestingDamageMultiplier", 1.0, True)
		  Var DinoHarvestingDamageMultiplier As Double = ParsedData.DoubleValue("DinoHarvestingDamageMultiplier", 1.0, True)
		  Var ClampResourceHarvestDamage As Boolean = ParsedData.BooleanValue("ClampResourceHarvestDamage", False, True)
		  Var UseOptimizedRates As Boolean = False
		  Var Overrides As New Beacon.BlueprintAttributeManager
		  
		  If (CommandLineOptions Is Nil) = False And CommandLineOptions.HasKey("UseOptimizedHarvestingHealth") Then
		    Try
		      UseOptimizedRates = CommandLineOptions.BooleanValue("UseOptimizedHarvestingHealth", False, False)
		    Catch Err As RuntimeException
		    End Try
		  End If
		  
		  If ParsedData.HasKey("HarvestResourceItemAmountClassMultipliers") Then
		    Var AutoValue As Variant = ParsedData.Value("HarvestResourceItemAmountClassMultipliers")
		    Var Dicts() As Dictionary
		    Var Info As Introspection.TypeInfo = Introspection.GetType(AutoValue)
		    Select Case Info.FullName
		    Case "Dictionary"
		      Dicts.Add(AutoValue)
		    Case "Object()"
		      Var ArrayValue() As Variant = AutoValue
		      For Each Dict As Dictionary In ArrayValue
		        Dicts.Add(Dict)
		      Next
		    End Select
		    
		    For Each Dict As Dictionary In Dicts
		      If Not Dict.HasAllKeys("ClassName", "Multiplier") Then
		        Continue
		      End If   
		      
		      Var Multiplier As Double = Dict.Value("Multiplier")
		      Var ClassString As String = Dict.Value("ClassName")
		      
		      If ClassString <> "" And ClassString.EndsWith("_C") And Multiplier > 0 Then
		        Var Engram As Beacon.Engram = Beacon.ResolveEngram("", "", ClassString, Mods)
		        Overrides.Value(Engram, RateAttribute) = Multiplier
		      End If
		    Next
		  End If
		  
		  Var Config As New BeaconConfigs.HarvestRates
		  Config.HarvestAmountMultiplier = HarvestAmountMultiplier
		  Config.HarvestHealthMultiplier = HarvestHealthMultiplier
		  Config.PlayerHarvestingDamageMultiplier = PlayerHarvestingDamageMultiplier
		  Config.DinoHarvestingDamageMultiplier = DinoHarvestingDamageMultiplier
		  Config.ClampResourceHarvestDamage = ClampResourceHarvestDamage
		  Config.UseOptimizedRates = UseOptimizedRates
		  Config.mOverrides = Overrides
		  Return Config
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LastRowIndex() As Integer
		  Return Self.mOverrides.Count - 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Override(Engram As Beacon.Engram) As Double
		  Var Multiplier As Variant = Self.mOverrides.Value(Engram, Self.RateAttribute)
		  If Multiplier.IsNull Then
		    Return 1.0
		  End If
		  Return Multiplier.DoubleValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Override(Engram As Beacon.Engram, Assigns Rate As Double)
		  If Engram Is Nil Then
		    Return
		  End If
		  
		  If Rate <= 0 And Self.mOverrides.HasBlueprint(Engram) Then
		    Self.mOverrides.Remove(Engram)
		    Self.Modified = True
		  ElseIf Rate > 0 And (Self.mOverrides.HasAttribute(Engram, Self.RateAttribute) = False Or Self.Override(Engram) <> Rate) Then
		    Self.mOverrides.Value(Engram, Self.RateAttribute) = Rate
		    Self.Modified = True
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SupportsMerging() As Boolean
		  Return True
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mClampResourceHarvestDamage
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Self.mClampResourceHarvestDamage <> Value Then
			    Self.mClampResourceHarvestDamage = Value
			    Self.Modified = True
			  End If
			End Set
		#tag EndSetter
		ClampResourceHarvestDamage As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mDinoHarvestingDamageMultiplier
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Self.mDinoHarvestingDamageMultiplier <> Value Then
			    Self.mDinoHarvestingDamageMultiplier = Value
			    Self.Modified = True
			  End If
			End Set
		#tag EndSetter
		DinoHarvestingDamageMultiplier As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mHarvestAmountMultiplier
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Self.mHarvestAmountMultiplier <> Value Then
			    Self.mHarvestAmountMultiplier = Value
			    Self.Modified = True
			  End If
			End Set
		#tag EndSetter
		HarvestAmountMultiplier As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mHarvestHealthMultiplier
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Self.mHarvestHealthMultiplier <> Value Then
			    Self.mHarvestHealthMultiplier = Value
			    Self.Modified = True
			  End If
			End Set
		#tag EndSetter
		HarvestHealthMultiplier As Double
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mClampResourceHarvestDamage As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDinoHarvestingDamageMultiplier As Double = 1.0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mHarvestAmountMultiplier As Double = 1.0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mHarvestHealthMultiplier As Double = 1.0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mOverrides As Beacon.BlueprintAttributeManager
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPlayerHarvestingDamageMultiplier As Double = 1.0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mUseOptimizedRates As Boolean = False
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mPlayerHarvestingDamageMultiplier
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Self.mPlayerHarvestingDamageMultiplier <> Value Then
			    Self.mPlayerHarvestingDamageMultiplier = Value
			    Self.Modified = True
			  End If
			End Set
		#tag EndSetter
		PlayerHarvestingDamageMultiplier As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mUseOptimizedRates
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Self.mUseOptimizedRates <> Value Then
			    Self.mUseOptimizedRates = Value
			    Self.Modified = True
			  End If
			End Set
		#tag EndSetter
		UseOptimizedRates As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = RateAttribute, Type = String, Dynamic = False, Default = \"Multiplier", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="IsImplicit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HarvestAmountMultiplier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClampResourceHarvestDamage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DinoHarvestingDamageMultiplier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HarvestHealthMultiplier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PlayerHarvestingDamageMultiplier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseOptimizedRates"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
