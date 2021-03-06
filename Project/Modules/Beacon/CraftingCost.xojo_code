#tag Class
Protected Class CraftingCost
Implements Beacon.NamedItem
	#tag Method, Flags = &h0
		Sub Append(Resource As Beacon.Engram, Quantity As Integer, RequireExact As Boolean)
		  If Resource = Nil Then
		    Return
		  End If
		  
		  If Self.IndexOf(Resource) > -1 Then
		    Return
		  End If
		  
		  Self.mIngredients.Add(New Beacon.RecipeIngredient(Resource, Quantity, RequireExact))
		  Self.Modified = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Self.mObjectID = New v4UUID
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Reference As Beacon.BlueprintReference, LoadRecipe As Boolean = False)
		  Self.Constructor()
		  Self.mEngram = Reference
		  
		  If LoadRecipe Then
		    Var Ingredients() As Beacon.RecipeIngredient = Engram.Recipe
		    Self.mIngredients.ResizeTo(Ingredients.LastIndex)
		    For Idx As Integer = 0 To Self.mIngredients.LastIndex
		      Self.mIngredients(Idx) = Ingredients(Idx)
		    Next
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Source As Beacon.CraftingCost)
		  Self.Constructor()
		  Self.mEngram = Source.mEngram
		  Self.mIngredients.ResizeTo(Source.mIngredients.LastIndex)
		  For Idx As Integer = 0 To Source.mIngredients.LastIndex
		    Self.mIngredients(Idx) = Source.mIngredients(Idx)
		  Next
		  Self.Modified = Source.Modified
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Engram As Beacon.Engram, LoadRecipe As Boolean = False)
		  Self.Constructor(New Beacon.BlueprintReference(Engram.ImmutableVersion), LoadRecipe)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count() As Integer
		  Return Self.mIngredients.Count
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Export() As Dictionary
		  If Self.mEngram Is Nil Then
		    Return Nil
		  End If
		  
		  Var Ingredients() As Dictionary
		  For Idx As Integer = 0 To Self.mIngredients.LastIndex
		    Var Resource As Dictionary = Self.mIngredients(Idx).ToDictionary
		    If (Resource Is Nil) = False Then
		      Ingredients.Add(Resource)
		    End If
		  Next
		  
		  Var Dict As New Dictionary
		  Dict.Value("Blueprint") = Self.mEngram.SaveData
		  Dict.Value("Ingredients") = Ingredients
		  Return Dict
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ImportFromBeacon(Dict As Dictionary) As Beacon.CraftingCost
		  Var Cost As Beacon.CraftingCost
		  If Dict.HasKey("Blueprint") Then
		    Var Reference As Beacon.BlueprintReference = Beacon.BlueprintReference.FromSaveData(Dict.Value("Blueprint"))
		    If Reference Is Nil Then
		      Return Nil
		    End If
		    Cost = New Beacon.CraftingCost(Reference)
		  ElseIf Dict.HasAnyKey("EngramID", "Engram") Then
		    Var Engram As Beacon.Engram = Beacon.ResolveEngram(Dict, "EngramID", "", "Engram", Nil)
		    If Engram Is Nil Then
		      Return Nil
		    End If
		    Cost = New Beacon.CraftingCost(Engram)
		  End If
		  
		  If Dict.HasKey("Ingredients") Then
		    Var Ingredients() As Dictionary = Dict.Value("Ingredients").DictionaryArrayValue
		    For Each Ingredient As Dictionary In Ingredients
		      Var Ref As Beacon.RecipeIngredient = Beacon.RecipeIngredient.FromDictionary(Ingredient, Nil)
		      If (Ref Is Nil) = False Then
		        Cost.mIngredients.Add(Ref)
		      End If
		    Next
		  ElseIf Dict.HasKey("Resources") Then
		    Var Resources() As Dictionary = Dict.Value("Resources").DictionaryArrayValue
		    For Each Resource As Dictionary In Resources
		      Var Quantity As Integer = Resource.Lookup("Quantity", 1)
		      Var RequireExact As Boolean = Resource.Lookup("Exact", False)
		      
		      Cost.mIngredients.Add(New Beacon.RecipeIngredient(Beacon.ResolveEngram(Resource, "EngramID", "", "Class", Nil), Quantity, RequireExact))
		    Next
		  End If
		  
		  Return Cost
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ImportFromConfig(Dict As Dictionary, Mods As Beacon.StringList) As Beacon.CraftingCost
		  Try
		    Var ClassString As String = Dict.Lookup("ItemClassString", "")
		    If ClassString = "" Then
		      Return Nil
		    End If
		    
		    Var Engram As Beacon.Engram = Beacon.ResolveEngram(Dict, "", "", "ItemClassString", Mods)
		    Var Cost As New Beacon.CraftingCost(Engram)
		    If Dict.HasKey("BaseCraftingResourceRequirements") Then
		      Var Resources() As Variant = Dict.Value("BaseCraftingResourceRequirements")
		      For Each Resource As Dictionary In Resources
		        Var ResourceEngram As Beacon.Engram = Beacon.ResolveEngram(Resource, "", "", "ResourceItemTypeString", Mods)
		        Var Quantity As Integer = Resource.Lookup("BaseResourceRequirement", 1)
		        Var RequireExact As Boolean = Resource.Lookup("bCraftingRequireExactResourceType", False)
		        Cost.Append(ResourceEngram, Quantity, RequireExact)
		      Next
		    End If
		    
		    Cost.Modified = False
		    Return Cost
		  Catch Err As RuntimeException
		    Return Nil
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IndexOf(Resource As Beacon.Engram) As Integer
		  For Idx As Integer = 0 To Self.mIngredients.LastIndex
		    If Self.mIngredients(Idx).Engram = Resource Then
		      Return Idx
		    End If
		  Next
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Insert(Idx As Integer, Resource As Beacon.Engram, Quantity As Integer, RequireExact As Boolean)
		  If Resource = Nil Then
		    Return
		  End If
		  
		  If Self.IndexOf(Resource) > -1 Then
		    Return
		  End If
		  
		  Self.mIngredients.AddAt(Idx, New Beacon.RecipeIngredient(Resource, Quantity, RequireExact))
		  Self.Modified = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Label() As String
		  If Self.mEngram Is Nil Then
		    Return ""
		  End If
		  
		  Return Self.Engram.Label
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LastRowIndex() As Integer
		  Return Self.mIngredients.LastIndex
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Modified() As Boolean
		  If Self.mLastModifiedTime > Self.mLastSaveTime Then
		    Return True
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Modified(Assigns Value As Boolean)
		  If Value = False Then
		    Self.mLastSaveTime = System.Microseconds
		  Else
		    Self.mLastModifiedTime = System.Microseconds
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ObjectID() As String
		  Return Self.mObjectID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Compare(Other As Beacon.CraftingCost) As Integer
		  If Other = Nil Then
		    Return 1
		  End If
		  
		  If Self.mObjectID = Other.mObjectID Then
		    Return 0
		  End If
		  
		  // Uh... sort on the id I guess? How else would this be sorted?
		  Return Self.mObjectID.StringValue.Compare(Other.mObjectID.StringValue, ComparisonOptions.CaseSensitive)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Quantity(Idx As Integer) As Integer
		  If Idx < Self.mIngredients.FirstRowIndex Or Idx > Self.mIngredients.LastIndex Then
		    Return 0
		  End If
		  
		  Return Self.mIngredients(Idx).Quantity
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Quantity(Idx As Integer, Assigns Value As Integer)
		  If Idx < Self.mIngredients.FirstRowIndex Or Idx > Self.mIngredients.LastIndex Then
		    Return
		  End If
		  
		  Value = Min(Max(Value, 1), 65535)
		  
		  Var Ingredient As Beacon.RecipeIngredient = Self.mIngredients(Idx)
		  If Ingredient.Quantity <> Value Then
		    Self.mIngredients(Idx) = New Beacon.RecipeIngredient(Ingredient.Engram, Value, Ingredient.RequireExact)
		    Self.Modified = True
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Remove(Resource As Beacon.Engram)
		  Var Idx As Integer = Self.IndexOf(Resource)
		  If Idx > -1 Then
		    Self.Remove(Idx)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Remove(Idx As Integer)
		  If Idx >= Self.mIngredients.FirstRowIndex And Idx <= Self.mIngredients.LastIndex Then
		    Self.mIngredients.RemoveAt(Idx)
		    Self.Modified = True
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RequireExactResource(Idx As Integer) As Boolean
		  If Idx < Self.mIngredients.FirstRowIndex Or Idx > Self.mIngredients.LastIndex Then
		    Return False
		  End If
		  
		  Return Self.mIngredients(Idx).RequireExact
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RequireExactResource(Idx As Integer, Assigns Value As Boolean)
		  If Idx < Self.mIngredients.FirstRowIndex Or Idx > Self.mIngredients.LastIndex Then
		    Return
		  End If
		  
		  Var Ingredient As Beacon.RecipeIngredient = Self.mIngredients(Idx)
		  If Ingredient.RequireExact <> Value Then
		    Self.mIngredients(Idx) = New Beacon.RecipeIngredient(Ingredient.Engram, Ingredient.Quantity, Value)
		    Self.Modified = True
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Resource(Idx As Integer) As Beacon.Engram
		  If Idx < Self.mIngredients.FirstRowIndex Or Idx > Self.mIngredients.LastIndex Then
		    Return Nil
		  End If
		  
		  Return Self.mIngredients(Idx).Engram
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Resource(Idx As Integer, Assigns Value As Beacon.Engram)
		  If Idx < Self.mIngredients.FirstRowIndex Or Idx > Self.mIngredients.LastIndex Then
		    Return
		  End If
		  
		  Var Ingredient As Beacon.RecipeIngredient = Self.mIngredients(Idx)
		  If Ingredient.Engram <> Value Then
		    Self.mIngredients(Idx) = New Beacon.RecipeIngredient(Value, Ingredient.Quantity, Ingredient.RequireExact)
		    Self.Modified = True
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StringValue() As String
		  Var Components() As String
		  For Idx As Integer = 0 To Self.mIngredients.LastIndex
		    Var ClassString As String = Self.mIngredients(Idx).ClassString
		    Var QuantityString As String = Self.mIngredients(Idx).Quantity.ToString(Locale.Raw, "0")
		    Var RequireExactString As String = If(Self.mIngredients(Idx).RequireExact, "True", "False")
		    Components.Add("(ResourceItemTypeString=""" + ClassString + """,BaseResourceRequirement=" + QuantityString + ",bCraftingRequireExactResourceType=" + RequireExactString + ")")
		  Next
		  
		  Var Pieces() As String
		  Pieces.Add("ItemClassString=""" + If((Self.mEngram Is Nil) = False, Self.mEngram.ClassString, "") + """")
		  Pieces.Add("BaseCraftingResourceRequirements=(" + Components.Join(",") + ")")
		  Return "(" + Pieces.Join(",") + ")"
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Beacon.Engram(Self.mEngram.Resolve)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value Is Nil Or Value = Self.mEngram Then
			    Return
			  End If
			  
			  Self.mEngram = New Beacon.BlueprintReference(Value.ImmutableVersion)
			  Self.Modified = True
			End Set
		#tag EndSetter
		Engram As Beacon.Engram
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mEngram As Beacon.BlueprintReference
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIngredients() As Beacon.RecipeIngredient
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLastModifiedTime As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLastSaveTime As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mObjectID As v4UUID
	#tag EndProperty


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
