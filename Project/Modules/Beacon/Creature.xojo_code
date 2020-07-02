#tag Class
Protected Class Creature
Implements Beacon.Blueprint
	#tag Method, Flags = &h0
		Function AlternateLabel() As NullableString
		  Return Self.mAlternateLabel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Availability() As UInt64
		  Return mAvailability
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Category() As String
		  Return Beacon.CategoryCreatures
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClassString() As String
		  Return Self.mClassString
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Clone() As Beacon.Creature
		  Return New Beacon.Creature(Self)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Constructor()
		  Self.mAvailability = Beacon.Maps.All.Mask
		  Self.mStats = New Dictionary
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Source As Beacon.Creature)
		  Self.Constructor()
		  
		  Self.mObjectID = Source.mObjectID
		  Self.mAvailability = Source.mAvailability
		  Self.mPath = Source.mPath
		  Self.mLabel = Source.mLabel
		  Self.mModID = Source.mModID
		  Self.mModName = Source.mModName
		  Self.mIncubationTime = Source.mIncubationTime
		  Self.mMatureTime = Source.mMatureTime
		  Self.mStats = Source.mStats.Clone
		  Self.mStatsMask = Source.mStatsMask
		  Self.mMinMatingInterval = Source.mMinMatingInterval
		  Self.mMaxMatingInterval = Source.mMaxMatingInterval
		  
		  Self.mTags.ResizeTo(-1)
		  For Each Tag As String In Source.mTags
		    Self.mTags.AddRow(Tag)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CreateFromClass(ClassString As String) As Beacon.Creature
		  Return Creature.CreateFromPath(Beacon.UnknownBlueprintPath("Creatures", ClassString))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CreateFromPath(Path As String) As Beacon.Creature
		  Var Creature As New Beacon.Creature
		  Creature.mClassString = Beacon.ClassStringFromPath(Path)
		  Creature.mPath = Path
		  Creature.mObjectID = v4UUID.FromHash(Crypto.HashAlgorithms.MD5, Creature.mPath.Lowercase)
		  Creature.mLabel = Beacon.LabelFromClassString(Creature.mClassString)
		  Creature.mModID = LocalData.UserModID
		  Creature.mModName = LocalData.UserModName
		  Return Creature
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ImmutableVersion() As Beacon.Creature
		  Return Self
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IncubationTime() As UInt64
		  Return Self.mIncubationTime
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsTagged(Tag As String) As Boolean
		  Return Self.mTags.IndexOf(Beacon.NormalizeTag(Tag)) > -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Label() As String
		  Return Self.mLabel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MatureTime() As UInt64
		  Return Self.mMatureTime
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MaxMatingInterval() As UInt64
		  Return Self.mMaxMatingInterval
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MinMatingInterval() As UInt64
		  Return Self.mMinMatingInterval
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ModID() As v4UUID
		  Return Self.mModID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ModName() As String
		  Return Self.mModName
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MutableClone() As Beacon.MutableCreature
		  Return New Beacon.MutableCreature(Self)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MutableVersion() As Beacon.MutableCreature
		  Return New Beacon.MutableCreature(Self)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ObjectID() As v4UUID
		  Return Self.mObjectID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Compare(Other As Beacon.Creature) As Integer
		  If Other = Nil Then
		    Return 1
		  End If
		  
		  Var SelfPath As String = Self.Path
		  Var OtherPath As String = Other.Path
		  Return SelfPath.Compare(OtherPath, ComparisonOptions.CaseSensitive)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pack(Dict As Dictionary)
		  #Pragma Warning "Not implemented"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Path() As String
		  Return Self.mPath
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StatAddValue(Stat As Beacon.Stat) As Double
		  Return Self.StatValue(Stat, Self.KeyAdd)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StatAffinityValue(Stat As Beacon.Stat) As Double
		  Return Self.StatValue(Stat, Self.KeyAffinity)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StatBaseValue(Stat As Beacon.Stat) As Double
		  Return Self.StatValue(Stat, Self.KeyBase)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StatsMask() As UInt16
		  Return Self.mStatsMask
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StatTamedValue(Stat As Beacon.Stat) As Double
		  Return Self.StatValue(Stat, Self.KeyTamed)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StatValue(Stat As Beacon.Stat, Key As String) As Double
		  If Self.mStats = Nil Or Self.mStats.HasKey(Stat.Index) = False Then
		    Return Self.MissingStatValue
		  End If
		  
		  Var Dict As Dictionary = Self.mStats.Value(Stat.Index)
		  Return Dict.Lookup(Key, Self.MissingStatValue)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StatWildValue(Stat As Beacon.Stat) As Double
		  Return Self.StatValue(Stat, Self.KeyWild)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tags() As String()
		  Var Clone() As String
		  Clone.ResizeTo(Self.mTags.LastRowIndex)
		  For I As Integer = 0 To Self.mTags.LastRowIndex
		    Clone(I) = Self.mTags(I)
		  Next
		  Return Clone
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UsesStats() As Beacon.Stat()
		  Return Beacon.Stats.ForMask(Self.mStatsMask)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected mAlternateLabel As NullableString
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mAvailability As UInt64
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mClassString As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mIncubationTime As UInt64
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mLabel As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mMatureTime As UInt64
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mMaxMatingInterval As UInt64
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mMinMatingInterval As UInt64
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mModID As v4UUID
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mModName As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mObjectID As v4UUID
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mPath As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mStats As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mStatsMask As UInt16
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mTags() As String
	#tag EndProperty


	#tag Constant, Name = KeyAdd, Type = String, Dynamic = False, Default = \"Add", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KeyAffinity, Type = String, Dynamic = False, Default = \"Affinity", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KeyBase, Type = String, Dynamic = False, Default = \"Base", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KeyTamed, Type = String, Dynamic = False, Default = \"Tamed", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KeyWild, Type = String, Dynamic = False, Default = \"Wild", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MissingStatValue, Type = Double, Dynamic = False, Default = \"-1", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
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
	#tag EndViewBehavior
End Class
#tag EndClass
