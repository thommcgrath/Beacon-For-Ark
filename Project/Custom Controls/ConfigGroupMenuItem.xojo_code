#tag Class
Protected Class ConfigGroupMenuItem
Inherits MenuItem
	#tag Event
		Function Action() As Boolean
		  If RaiseEvent Action = True Then
		    Return True
		  End If
		  
		  Var View As BeaconSubview = App.MainWindow.CurrentComponent
		  If View Is Nil Or (View IsA DocumentsComponent) = False Then
		    Return False
		  End If
		  
		  Var Component As DocumentsComponent = DocumentsComponent(View)
		  If (Component.CurrentPage IsA DocumentEditorView) = False Then
		    Return False
		  End If
		  
		  Var DocumentEditor As DocumentEditorView = DocumentEditorView(Component.CurrentPage)
		  DocumentEditor.CurrentConfigName = Self.Tag.StringValue
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub EnableMenu()
		  Self.HasCheckMark = False
		  
		  If IsEventImplemented("EnableMenu") Then
		    Return
		  End If
		  
		  Var Win As MainWindow = App.MainWindow
		  If Win Is Nil Then
		    Return
		  End If
		  
		  Var View As BeaconSubview = Win.CurrentComponent
		  If View Is Nil Or (View IsA DocumentsComponent) = False Then
		    Return
		  End If
		  
		  Var Component As DocumentsComponent = DocumentsComponent(View)
		  If (Component.CurrentPage IsA DocumentEditorView) = False Then
		    Return
		  End If
		  
		  Var DocumentEditor As DocumentEditorView = DocumentEditorView(Component.CurrentPage)
		  If DocumentEditor.CurrentConfigName = Self.Tag.StringValue Then
		    Self.HasCheckMark = True
		  End If
		  
		  Self.Enable
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor(ConfigName As String)
		  Var Label As String = Language.LabelForConfig(ConfigName)
		  Super.Constructor(Label, ConfigName)
		  Self.AutoEnabled = False
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Action() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EnableMenu()
	#tag EndHook


	#tag ViewBehavior
		#tag ViewProperty
			Name="Text"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastRowIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Icon"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Picture"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
			Name="Visible"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mIndex"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasCheckMark"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Shortcut"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoEnabled"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
