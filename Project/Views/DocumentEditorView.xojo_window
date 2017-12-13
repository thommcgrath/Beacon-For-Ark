#tag Window
Begin BeaconSubview DocumentEditorView
   AcceptFocus     =   False
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   436
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   True
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   0
   Transparent     =   True
   UseFocusRing    =   False
   Visible         =   True
   Width           =   702
   Begin BeaconToolbar Header
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      Caption         =   "Sources"
      CaptionEnabled  =   True
      CaptionIsButton =   True
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   False
      HasResizer      =   True
      Height          =   41
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   250
   End
   Begin FadedSeparator FadedSeparator1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   436
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   250
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   1
   End
   Begin BeaconListbox List
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   False
      ColumnCount     =   2
      ColumnsResizable=   False
      ColumnWidths    =   "30,*"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   30
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   False
      HeadingIndex    =   -1
      Height          =   395
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      RowCount        =   0
      Scope           =   2
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   1
      ShowDropIndicator=   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   41
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   250
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PagePanel Panel
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   436
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   251
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   2
      Panels          =   ""
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      Top             =   0
      Value           =   0
      Visible         =   True
      Width           =   451
      Begin BeaconToolbar HelpHeader
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         Caption         =   "Nothing Selected"
         CaptionEnabled  =   True
         CaptionIsButton =   False
         Enabled         =   True
         HasResizer      =   False
         Height          =   41
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Panel"
         Left            =   251
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   0
         UseFocusRing    =   True
         Visible         =   True
         Width           =   451
      End
      Begin HTMLViewer HelpView
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   395
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Panel"
         Left            =   251
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Renderer        =   1
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   41
         Visible         =   True
         Width           =   451
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim HelpFile As FolderItem = App.HelpFile("LootSources.html")
		  If HelpFile <> Nil Then
		    Self.HelpView.LoadPage(HelpFile)
		  End If
		  Self.UpdateCaptionButton()
		  Self.UpdateSourceList()
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddLootSource(LootSource As Beacon.LootSource)
		  Dim Arr(0) As Beacon.LootSource
		  Arr(0) = LootSource
		  Self.AddLootSources(Arr)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddLootSources(Sources() As Beacon.LootSource, Silent As Boolean = False)
		  If Sources.Ubound = -1 Then
		    Return
		  End If
		  
		  Dim CurrentMask As UInt64 = Self.mDocument.MapCompatibility
		  Dim IgnoredSources() As Beacon.LootSource
		  
		  For Each Source As Beacon.LootSource In Sources
		    If Self.mDocument.HasLootSource(Source) Then
		      Self.mDocument.Remove(Source)
		    End If
		    
		    If Self.mDocument.SupportsLootSource(Source) Then
		      Self.mDocument.Add(Source)
		    Else
		      IgnoredSources.Append(Source)
		    End If
		    Self.ContentsChanged = True
		  Next
		  
		  Self.UpdateSourceList(Sources)
		  
		  If IgnoredSources.Ubound > -1 And Not Silent Then
		    Dim SourcesList() As Text
		    For Each IgnoredSource As Beacon.LootSource In IgnoredSources
		      SourcesList.Append(IgnoredSource.Label)
		    Next
		    
		    Dim IgnoredCount As Integer = IgnoredSources.Ubound + 1
		    Self.ShowAlert(IgnoredCount.ToText + if(IgnoredCount = 1, " loot source was", " loot sources were") + " not added because " + if(IgnoredCount = 1, "it is", "they are") + " not compatible with the selected maps.", "The following " + if(IgnoredCount = 1, "loot source was", "loot sources were") + " skipped: " + Text.Join(SourcesList, ", "))
		  End If
		  
		  Self.List.EnsureSelectionIsVisible()
		  Self.Focus = Self.List
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Ref As Beacon.DocumentRef, Document As Beacon.Document)
		  Self.mDocument = Document
		  Self.mRef = Ref
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Document() As Beacon.Document
		  Return Self.mDocument
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function File() As FolderItem
		  If Self.mRef = Nil Then
		    Return Nil
		  End If
		  
		  If Self.mRef IsA LocalDocumentRef Then
		    Return LocalDocumentRef(Self.mRef).File
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveSelectedBeacons(RequireConfirmation As Boolean)
		  If Self.List.SelCount = 0 Then
		    Return
		  End If
		  
		  If RequireConfirmation Then
		    Dim Dialog As New MessageDialog
		    Dialog.Title = ""
		    If Self.List.SelCount = 1 Then
		      Dialog.Message = "Are you sure you want to delete the selected loot source?"
		    Else
		      Dialog.Message = "Are you sure you want to delete these " + Str(Self.List.SelCount, "-0") + " loot sources?"
		    End If
		    Dialog.Explanation = "This action cannot be undone."
		    Dialog.ActionButton.Caption = "Delete"
		    Dialog.CancelButton.Visible = True
		    
		    Dim Choice As MessageDialogButton = Dialog.ShowModalWithin(Self.TrueWindow)
		    If Choice = Dialog.CancelButton Then
		      Return
		    End If
		  End If
		  
		  For I As Integer = Self.List.ListCount - 1 DownTo 0
		    If Self.List.Selected(I) Then
		      Self.mDocument.Remove(Self.List.RowTag(I))
		      Self.List.RemoveRow(I)
		    End If
		  Next
		  
		  Self.ContentsChanged = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowAddLootSource()
		  Dim LootSource As Beacon.LootSource = LootSourceWizard.PresentAdd(Self.TrueWindow, Self.mDocument)
		  If LootSource <> Nil Then
		    Self.AddLootSource(LootSource)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateCaptionButton()
		  Dim DocTitle As Text = Self.mDocument.Title.Trim
		  Dim MaxDinoLevel As Integer
		  If Self.mDocument.DifficultyValue > 0 Then
		    MaxDinoLevel = Round(Self.mDocument.DifficultyValue * 30)
		  End If
		  
		  If DocTitle = "" Then
		    DocTitle = Self.mRef.Name
		  End If
		  
		  Header.Caption = DocTitle + EndOfLine + If(MaxDinoLevel > 0, " Level " + MaxDinoLevel.ToText, "")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateSourceList(SelectedSources() As Beacon.LootSource = Nil)
		  Dim CurrentMask As UInt64 = Self.mDocument.MapCompatibility
		  //Editor.MapMask = CurrentMask
		  
		  Dim VisibleSources() As Beacon.LootSource = Self.mDocument.LootSources
		  VisibleSources.Sort
		  
		  Dim SelectedClasses() As Text
		  If SelectedSources <> Nil Then
		    For Each Source As Beacon.LootSource In SelectedSources
		      SelectedClasses.Append(Source.ClassString)
		    Next
		  Else
		    Dim Bound As Integer = Self.List.ListCount - 1
		    For I As Integer = 0 To Bound
		      If Self.List.Selected(I) Then
		        SelectedClasses.Append(Beacon.LootSource(Self.List.RowTag(I)).ClassString)
		      End If
		    Next
		  End If
		  
		  Self.List.RowCount = VisibleSources.Ubound + 1
		  
		  Self.mBlockSelectionChanged = True
		  Dim Selection() As Beacon.LootSource
		  For I As Integer = 0 To VisibleSources.Ubound
		    Self.List.RowTag(I) = VisibleSources(I)
		    Self.List.Cell(I, 0) = "" // Causes a redraw of the cell
		    Self.List.Cell(I, 1) = VisibleSources(I).Label
		    If SelectedClasses.IndexOf(VisibleSources(I).ClassString) > -1 Then
		      Self.List.Selected(I) = True
		      Selection.Append(VisibleSources(I))
		    Else
		      Self.List.Selected(I) = False
		    End If
		  Next
		  Self.mBlockSelectionChanged = False
		  //Editor.Sources = Selection
		  //Editor.Enabled = UBound(Selection) > -1
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mBlockSelectionChanged As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDocument As Beacon.Document
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRef As Beacon.DocumentRef
	#tag EndProperty


	#tag Constant, Name = kClipboardType, Type = String, Dynamic = False, Default = \"com.thezaz.beacon.beacon", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events Header
	#tag Event
		Sub Open()
		  Dim AddButton As New BeaconToolbarItem("AddSource", IconAdd)
		  AddButton.HasMenu = True
		  AddButton.HelpTag = "Define an additional loot source. Hold to quickly add a source from a menu."
		  
		  Dim ShareButton As New BeaconToolbarItem("Export", IconToolbarExport, Self.mDocument.IsValid)
		  ShareButton.HelpTag = "Export this document."
		  
		  Dim DuplicateButton As New BeaconToolbarItem("Duplicate", IconToolbarClone, False)
		  DuplicateButton.HelpTag = "Duplicate the selected loot source."
		  
		  Dim RebuildButton As New BeaconToolbarItem("Rebuild", Nil, Self.mDocument.BeaconCount > 0)
		  RebuildButton.HelpTag = "Rebuild all item sets using their presets."
		  
		  Me.LeftItems.Append(AddButton)
		  Me.LeftItems.Append(DuplicateButton)
		  Me.RightItems.Append(RebuildButton)
		  Me.RightItems.Append(ShareButton)
		End Sub
	#tag EndEvent
	#tag Event
		Sub ShouldResize(ByRef NewSize As Integer)
		  NewSize = Max(NewSize, 250)
		  
		  Me.Width = NewSize
		  FadedSeparator1.Left = NewSize
		  List.Width = NewSize
		  Panel.Left = FadedSeparator1.Left + FadedSeparator1.Width
		  Panel.Width = Self.Width - (Panel.Left)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub CaptionClicked()
		  If DocumentSetupSheet.Present(Self, Self.mDocument, DocumentSetupSheet.Modes.Edit) Then
		    Self.UpdateCaptionButton()
		    Self.ContentsChanged = True
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action(Item As BeaconToolbarItem)
		  Select Case Item.Name
		  Case "AddSource"
		    Self.ShowAddLootSource()
		  End Select
		End Sub
	#tag EndEvent
	#tag Event
		Sub BuildMenu(Item As BeaconToolbarItem, Menu As MenuItem)
		  Select Case Item.Name
		  Case "AddSource"
		    Dim LootSources() As Beacon.LootSource = Beacon.Data.SearchForLootSources("")
		    Dim CurrentMask As UInt64 = Self.mDocument.MapCompatibility
		    For I As Integer = LootSources.Ubound DownTo 0
		      If Self.mDocument.HasLootSource(LootSources(I)) Then
		        LootSources.Remove(I)
		        Continue For I
		      End If
		      If Not Self.mDocument.SupportsLootSource(LootSources(I)) Then
		        LootSources.Remove(I)
		      End If
		    Next
		    
		    If LootSources.Ubound = -1 Then
		      Return
		    End If
		    
		    For Each LootSource As Beacon.LootSource In LootSources
		      Menu.Append(New MenuItem(LootSource.Label, LootSource))
		    Next
		  End Select
		End Sub
	#tag EndEvent
	#tag Event
		Sub HandleMenuAction(Item As BeaconToolbarItem, ChosenItem As MenuItem)
		  Select Case Item.Name
		  Case "AddSource"
		    If ChosenItem = Nil Then
		      Return
		    End If
		    
		    Dim Source As Beacon.LootSource = ChosenItem.Tag
		    Self.AddLootSource(Source)
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events List
	#tag Event
		Function CellBackgroundPaint(G As Graphics, Row As Integer, Column As Integer, BackgroundColor As Color, TextColor As Color, IsHighlighted As Boolean) As Boolean
		  #Pragma Unused BackgroundColor
		  
		  If Row >= Me.ListCount Then
		    Return False
		  End If
		  
		  Dim ReturnValue As Boolean
		  Dim Source As Beacon.LootSource = Me.RowTag(Row)
		  If Not Source.IsValid Then
		    G.ForeColor = BeaconUI.BackgroundColorForInvalidRow(G.ForeColor, IsHighlighted, Me.Selected(Row))
		    G.FillRect(0, 0, G.Width, G.Height)
		    ReturnValue = True
		    TextColor = BeaconUI.TextColorForInvalidRow(IsHighlighted, Me.Selected(Row))
		  End If
		  
		  If Column = 0 Then
		    Dim Icon As Picture = LocalData.SharedInstance.IconForLootSource(Source, RGB(TextColor.Red, TextColor.Green, TextColor.Blue, 150))
		    Dim SpaceWidth As Integer = Me.Column(Column).WidthActual
		    Dim SpaceHeight As Integer = Me.DefaultRowHeight
		    
		    G.DrawPicture(Icon, (SpaceWidth - Icon.Width) / 2, (SpaceHeight - Icon.Height) / 2)
		    
		    ReturnValue = True
		  End If
		  
		  Return ReturnValue
		End Function
	#tag EndEvent
	#tag Event
		Function CellTextPaint(G As Graphics, Row As Integer, Column As Integer, ByRef TextColor As Color, DrawSpace As Xojo.Core.Rect, VerticalPosition As Integer, IsHighlighted As Boolean) As Boolean
		  #Pragma Unused G
		  #Pragma Unused Row
		  #Pragma Unused TextColor
		  #Pragma Unused DrawSpace
		  #Pragma Unused VerticalPosition
		  
		  If Column = 0 Then
		    Return True
		  End If
		  
		  If Column = 1 Then
		    Dim Source As Beacon.LootSource = Me.RowTag(Row)
		    If Not Source.IsValid Then
		      TextColor = BeaconUI.TextColorForInvalidRow(IsHighlighted, Me.Selected(Row))
		      G.Bold = True
		    End If
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Function CanCopy() As Boolean
		  Return Me.SelCount > 0
		End Function
	#tag EndEvent
	#tag Event
		Function CanDelete() As Boolean
		  Return Me.SelCount > 0
		End Function
	#tag EndEvent
	#tag Event
		Function CanPaste(Board As Clipboard) As Boolean
		  Return Board.RawDataAvailable(Self.kClipboardType) Or (Board.TextAvailable And Left(Board.Text, 30) = "ConfigOverrideSupplyCrateItems")
		End Function
	#tag EndEvent
	#tag Event
		Sub PerformClear(Warn As Boolean)
		  Self.RemoveSelectedBeacons(Warn)
		End Sub
	#tag EndEvent
	#tag Event
		Sub PerformCopy(Board As Clipboard)
		  If Me.SelCount = 0 Then
		    Return
		  End If
		  
		  Dim Lines() As Text
		  Dim Dicts() As Xojo.Core.Dictionary
		  For I As Integer = 0 To Me.ListCount - 1
		    If Me.Selected(I) Then
		      Dim Source As Beacon.LootSource = Me.RowTag(I)
		      Dicts.Append(Source.Export)
		      If Source.IsValid Then
		        Lines.Append("ConfigOverrideSupplyCrateItems=" + Source.TextValue(Self.mDocument.DifficultyValue))
		      End If
		    End If
		  Next
		  
		  Dim RawData As Text
		  If UBound(Dicts) = 0 Then
		    RawData = Xojo.Data.GenerateJSON(Dicts(0))
		  Else
		    RawData = Xojo.Data.GenerateJSON(Dicts)
		  End If
		  
		  Board.AddRawData(RawData, Self.kClipboardType)
		  Board.Text = Text.Join(Lines, Text.FromUnicodeCodepoint(10))
		End Sub
	#tag EndEvent
	#tag Event
		Sub PerformPaste(Board As Clipboard)
		  If Board.RawDataAvailable(Self.kClipboardType) Then
		    Dim Contents As String = DefineEncoding(Board.RawData(Self.kClipboardType), Encodings.UTF8)
		    Dim Parsed As Auto
		    Try
		      Parsed = Xojo.Data.ParseJSON(Contents.ToText)
		    Catch Err As Xojo.Data.InvalidJSONException
		      Beep
		      Return
		    End Try
		    
		    Dim Info As Xojo.Introspection.TypeInfo = Xojo.Introspection.GetType(Parsed)
		    Dim Dicts() As Xojo.Core.Dictionary
		    If Info.FullName = "Xojo.Core.Dictionary" Then
		      Dicts.Append(Parsed)
		    ElseIf Info.FullName = "Auto()" Then
		      Dim Values() As Auto = Parsed
		      For Each Dict As Xojo.Core.Dictionary In Values
		        Dicts.Append(Dict)
		      Next
		    Else
		      Beep
		      Return
		    End If
		    
		    Dim Sources() As Beacon.LootSource
		    For Each Dict As Xojo.Core.Dictionary In Dicts
		      Sources.Append(Beacon.LootSource.ImportFromBeacon(Dict))
		    Next
		    Self.AddLootSources(Sources)
		  ElseIf Board.TextAvailable Then
		    Dim Contents As String = Board.Text
		    If Left(Contents, 30) = "ConfigOverrideSupplyCrateItems" Then
		      #Pragma Warning "Need to implement clipboard paste"
		      #if Not DebugBuild
		        Self.Import(Contents, "Clipboard")
		      #endif
		    End If
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Header.Duplicate.Enabled = Me.SelCount = 1
		  
		  If Self.mBlockSelectionChanged Then
		    Return
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HelpView
	#tag Event
		Sub TitleChanged(newTitle as String)
		  HelpHeader.Caption = NewTitle
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="AcceptFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Appearance"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Group="Position"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
