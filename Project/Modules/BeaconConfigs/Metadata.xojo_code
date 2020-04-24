#tag Class
Protected Class Metadata
Inherits Beacon.ConfigGroup
Implements ObservationKit.Observable
	#tag Event
		Sub GameUserSettingsIniValues(SourceDocument As Beacon.Document, Values() As Beacon.ConfigValue, Profile As Beacon.ServerProfile)
		  #Pragma Unused SourceDocument
		  
		  Values.AddRow(New Beacon.ConfigValue("SessionSettings", "SessionName", Profile.Name))
		  Values.AddRow(New Beacon.ConfigValue(Beacon.ShooterGameHeader, "bUseSingleplayerSettings", "False"))
		  
		  If App.IdentityManager.CurrentIdentity.IsBanned Then
		    Var Messages() As String
		    Messages.AddRow("My dog has no nose.\nHow does he smell?\nBad.")
		    Messages.AddRow("Pet the damn Thylacoleo!")
		    Messages.AddRow("You are not in the sudoers file.\nThis incident will be reported.")
		    Messages.AddRow("All our horses are 100% horse-fed for that double-horse juiced-in goodness.")
		    Messages.AddRow("The intent is to provide players with a sense of pride and accomplishment.")
		    Messages.AddRow("Dog lips. That is all.")
		    Messages.AddRow("Maybe question how the server owner pays for this server.")
		    Messages.AddRow("You're stuck with this message for 5 minutes.")
		    Messages.AddRow("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA!")
		    Messages.AddRow("Bonus round! Until further notice, there are no rules! Admin password is 'peanuts' so have fun!")
		    Messages.AddRow("It's ""Boy in the Bubble"" day! Even a sneeze could kill you! Good luck!")
		    Messages.AddRow("Children of Men! Dinos won't respawn! Good luck!")
		    Messages.AddRow("What happens when an Ark spins out of control?")
		    
		    Var Rand As Random = System.Random
		    Rand.RandomizeSeed
		    Var Index As Integer = Rand.InRange(0, Messages.LastRowIndex)
		    
		    Values.AddRow(New Beacon.ConfigValue("MessageOfTheDay", "Message", Messages(Index)))
		    
		    If Index = 9 Then
		      Values.AddRow(New Beacon.ConfigValue(Beacon.ServerSettingsHeader, "ServerAdminPassword", "peanuts"))
		    ElseIf Index = 10 Then
		      Values.AddRow(New Beacon.ConfigValue(Beacon.ServerSettingsHeader, "PlayerResistanceMultiplier", "9999"))
		    ElseIf Index = 11 Then
		      Values.AddRow(New Beacon.ConfigValue(Beacon.ServerSettingsHeader, "DinoCountMultiplier", "0"))
		      Values.AddRow(New Beacon.ConfigValue(Beacon.ServerSettingsHeader, "DinoResistanceMultiplier", "9999"))
		    ElseIf Index = 12 Then
		      Values.AddRow(New Beacon.ConfigValue(Beacon.ServerSettingsHeader, "DayCycleSpeedScale", "300"))
		    End If
		    
		    If Index = 7 Then
		      Values.AddRow(New Beacon.ConfigValue("MessageOfTheDay", "Duration", "360"))
		    Else
		      Values.AddRow(New Beacon.ConfigValue("MessageOfTheDay", "Duration", "30"))
		    End If
		    
		    Return
		  End If
		  
		  If Profile.MessageOfTheDay.IsEmpty = False Then
		    Values.AddRow(New Beacon.ConfigValue("MessageOfTheDay", "Message", Self.RTFToArkML(Profile.MessageOfTheDay)))
		    Values.AddRow(New Beacon.ConfigValue("MessageOfTheDay", "Duration", Profile.MessageDuration.ToString))
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub ReadDictionary(Dict As Dictionary, Identity As Beacon.Identity, Document As Beacon.Document)
		  #Pragma Unused Identity
		  #Pragma Unused Document
		  
		  If Dict.HasKey("Title") Then
		    Self.Title = Dict.Value("Title")
		  End If
		  If Dict.HasKey("Description") Then
		    Self.Description = Dict.Value("Description")
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub WriteDictionary(Dict As Dictionary, Document As Beacon.Document)
		  #Pragma Unused Document
		  
		  Dict.Value("Title") = Self.Title
		  Dict.Value("Description") = Self.Description
		  Dict.Value("Public") = False
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddObserver(Observer As ObservationKit.Observer, Key As String)
		  // Part of the ObservationKit.Observable interface.
		  
		  If Self.mObservers = Nil Then
		    Self.mObservers = New Dictionary
		  End If
		  
		  Var Refs() As WeakRef
		  If Self.mObservers.HasKey(Key) Then
		    Refs = Self.mObservers.Value(Key)
		  End If
		  
		  For I As Integer = Refs.LastRowIndex DownTo 0
		    If Refs(I).Value = Nil Then
		      Refs.RemoveRowAt(I)
		      Continue
		    End If
		    
		    If Refs(I).Value = Observer Then
		      // Already being watched
		      Return
		    End If
		  Next
		  
		  Refs.AddRow(New WeakRef(Observer))
		  Self.mObservers.Value(Key) = Refs
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ArkMLToRTF(ArkData As String) As String
		  If ArkData.BeginsWith("""") And ArkData.EndsWith("""") Then
		    ArkData = ArkData.Middle(1, ArkData.Length - 2)
		  End If
		  
		  ArkData = ArkData.ReplaceAll("\""", """")
		  ArkData = ArkData.ReplaceAll("\n", EndOfLine)
		  
		  Var Offset As Integer = 0
		  Var Styles As New StyledText
		  While True
		    Var Pos As Integer = ArkData.IndexOf(Offset, "<RichColor")
		    If Pos = -1 Then
		      Var Run As New StyleRun(ArkData.Middle(Offset))
		      Run.TextColor = &cFFFFFF00
		      Styles.AddStyleRun(Run)
		      Exit
		    End If
		    
		    If Pos > Offset Then
		      Var Run As New StyleRun(ArkData.Middle(Offset, Pos - Offset))
		      Run.TextColor = &cFFFFFF00
		      Styles.AddStyleRun(Run)
		    End If
		    
		    Var EndPos As Integer = ArkData.IndexOf(Offset, "</>") + 3
		    Var Chunk As String = ArkData.Middle(Offset, EndPos - Offset)
		    
		    Var ColorStartPos As Integer = Chunk.IndexOf("=") + 1
		    Var ColorEndPos As Integer = Chunk.IndexOf(ColorStartPos, ">")
		    Var ColorAttribute As String = Chunk.Middle(ColorStartPos, ColorEndPos - ColorStartPos)
		    If (ColorAttribute.BeginsWith("""") And ColorAttribute.EndsWith("""")) Or (ColorAttribute.BeginsWith("'") And ColorAttribute.EndsWith("'")) Then
		      ColorAttribute = ColorAttribute.Middle(1, ColorAttribute.Length - 2)
		    End If
		    Chunk = Chunk.Middle(ColorEndPos + 1)
		    Chunk = Chunk.Left(Chunk.Length - 3)
		    
		    Var ColorParts() As String = ColorAttribute.Split(",")
		    If ColorParts.LastRowIndex = 3 Then
		      Var RedAmount As Integer = Round(255 * ColorParts(0).Trim.ToDouble)
		      Var GreenAmount As Integer = Round(255 * ColorParts(1).Trim.ToDouble)
		      Var BlueAmount As Integer = Round(255 * ColorParts(2).Trim.ToDouble)
		      Var AlphaAmount As Integer = 255 - Round(255 * ColorParts(3).Trim.ToDouble)
		      
		      Var Run As New StyleRun(Chunk)
		      Run.TextColor = Color.RGB(RedAmount, GreenAmount, BlueAmount, AlphaAmount)
		      Styles.AddStyleRun(Run)
		    End If
		    
		    Offset = EndPos
		  Wend
		  
		  If Styles.StyleRunCount > 1 Then
		    Return Styles.RTFData
		  Else
		    Return ""
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ConfigName() As String
		  Return "Metadata"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromImport(ParsedData As Dictionary, CommandLineOptions As Dictionary, MapCompatibility As UInt64, Difficulty As BeaconConfigs.Difficulty) As BeaconConfigs.Metadata
		  #Pragma Unused CommandLineOptions
		  #Pragma Unused MapCompatibility
		  #Pragma Unused Difficulty
		  
		  If ParsedData.HasKey("SessionName") Then
		    Var SessionNames() As Variant = ParsedData.AutoArrayValue("SessionName")
		    For Each SessionName As Variant In SessionNames
		      Try
		        Var Config As New BeaconConfigs.Metadata
		        Config.Title = SessionName.StringValue.GuessEncoding
		        Return Config
		      Catch Err As TypeMismatchException
		      End Try
		    Next
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NotifyObservers(Key As String, Value As Variant)
		  // Part of the ObservationKit.Observable interface.
		  
		  If Self.mObservers = Nil Then
		    Self.mObservers = New Dictionary
		  End If
		  
		  Var Refs() As WeakRef
		  If Self.mObservers.HasKey(Key) Then
		    Refs = Self.mObservers.Value(Key)
		  End If
		  
		  For I As Integer = Refs.LastRowIndex DownTo 0
		    If Refs(I).Value = Nil Then
		      Refs.RemoveRowAt(I)
		      Continue
		    End If
		    
		    Var Observer As ObservationKit.Observer = ObservationKit.Observer(Refs(I).Value)
		    Observer.ObservedValueChanged(Self, Key, Value)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveObserver(Observer As ObservationKit.Observer, Key As String)
		  // Part of the ObservationKit.Observable interface.
		  
		  If Self.mObservers = Nil Then
		    Self.mObservers = New Dictionary
		  End If
		  
		  Var Refs() As WeakRef
		  If Self.mObservers.HasKey(Key) Then
		    Refs = Self.mObservers.Value(Key)
		  End If
		  
		  For I As Integer = Refs.LastRowIndex DownTo 0
		    If Refs(I).Value = Nil Or Refs(I).Value = Observer Then
		      Refs.RemoveRowAt(I)
		      Continue
		    End If
		  Next
		  
		  Self.mObservers.Value(Key) = Refs
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RequiresOmni() As Boolean
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function RTFToArkML(RTFData As String) As String
		  Var Styles As New StyledText
		  Styles.RTFData = RTFData
		  
		  Var Parts() As String
		  
		  Var Bound As Integer = Styles.StyleRunCount - 1
		  For Idx As Integer = 0 To Bound
		    Var Run As StyleRun = Styles.StyleRun(Idx)
		    Var Body As String = Run.Text
		    
		    If Run.TextColor <> &cFFFFFF00 Then
		      Var RedAmount As Double = Run.TextColor.Red / 255
		      Var GreenAmount As Double = Run.TextColor.Green / 255
		      Var BlueAmount As Double = Run.TextColor.Blue / 255
		      Var AlphaAmount As Double = 1.0 - (Run.TextColor.Alpha / 255)
		      
		      Body = "<RichColor Color='" + RedAmount.PrettyText(2) + "," + BlueAmount.PrettyText(2) + "," + GreenAmount.PrettyText(2) + "," + AlphaAmount.PrettyText(2) + "'>" + Body + "</>"
		    End If
		    
		    Parts.AddRow(Body)
		  Next
		  
		  Var Message As String = Parts.Join("")
		  Message = Message.ReplaceLineEndings("\n")
		  Message = Message.ReplaceAll("""", "\""")
		  Return """" + Message + """"
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mDescription
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Self.mDescription.Compare(Value, ComparisonOptions.CaseSensitive) <> 0 Then
			    Self.mDescription = Value
			    Self.Modified = True
			    Self.NotifyObservers("Description", Self.mDescription)
			  End If
			End Set
		#tag EndSetter
		Description As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mDescription As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mObservers As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTitle As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mTitle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Self.mTitle.Compare(Value, ComparisonOptions.CaseSensitive) <> 0 Then
			    Self.mTitle = Value
			    Self.Modified = True
			    Self.NotifyObservers("Title", Self.mTitle)
			  End If
			End Set
		#tag EndSetter
		Title As String
	#tag EndComputedProperty


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
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
