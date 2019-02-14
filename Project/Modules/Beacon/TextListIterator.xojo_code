#tag Class
Protected Class TextListIterator
Implements Xojo.Core.Iterator
	#tag Method, Flags = &h0
		Sub Constructor(List As Beacon.TextList)
		  Self.mItems = List
		  Self.mIndex = -1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MoveNext() As Boolean
		  // Part of the Xojo.Core.Iterator interface.
		  
		  Self.mIndex = Self.mIndex + 1
		  Return Self.mIndex <= Self.mItems.Ubound
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Value() As Auto
		  // Part of the Xojo.Core.Iterator interface.
		  
		  Return Self.mItems(Self.mIndex)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mIndex As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mItems() As Text
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mIndex"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
