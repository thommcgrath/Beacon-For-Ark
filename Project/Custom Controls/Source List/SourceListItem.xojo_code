#tag Class
Protected Class SourceListItem
	#tag Method, Flags = &h0
		Function Caption() As String
		  Return Self.mCaption
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Caption As String, Tag As Variant = Nil)
		  Self.mCaption = Caption
		  Self.mTag = Tag
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tag() As Variant
		  Return Self.mTag
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mCaption As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTag As Variant
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mUnemphasized As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.mUnemphasized
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.mUnemphasized = Value
			End Set
		#tag EndSetter
		Unemphasized As Boolean
	#tag EndComputedProperty


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
