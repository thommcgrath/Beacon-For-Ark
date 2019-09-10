#tag Window
Begin Window ExceptionWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   CloseButton     =   False
   Compatibility   =   ""
   Composite       =   False
   DefaultLocation =   "2"
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   HasBackgroundColor=   False
   HasCloseButton  =   False
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   False
   Height          =   400
   ImplicitInstance=   False
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   MinWidth        =   64
   Placement       =   2
   Resizable       =   True
   Resizeable      =   False
   SystemUIVisible =   "True"
   Title           =   "Beacon Error"
   Type            =   "1"
   Visible         =   True
   Width           =   600
   Begin ControlCanvas LogoCanvas
      AcceptFocus     =   False
      AcceptTabs      =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   64
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      ScrollSpeed     =   20
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   64
   End
   Begin Label MessageLabel
      AllowAutoDeactivate=   True
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   104
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Beacon has encountered an unrecoverable error"
      TextAlign       =   "0"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Value           =   "Beacon has encountered an unrecoverable error"
      Visible         =   True
      Width           =   476
   End
   Begin Label ExplanationLabel
      AllowAutoDeactivate=   True
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   38
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   104
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Well this is embarrassing. Something has gone wrong that Beacon wasn't prepared for. Beacon will need to stop now."
      TextAlign       =   "0"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Value           =   "Well this is embarrassing. Something has gone wrong that Beacon wasn't prepared for. Beacon will need to stop now."
      Visible         =   True
      Width           =   476
   End
   Begin UITweaks.ResizedPushButton QuitButton
      AllowAutoDeactivate=   True
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Quit"
      Default         =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   500
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   "0"
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Tooltip         =   ""
      Top             =   360
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin FadedSeparator TopBorder
      AcceptFocus     =   False
      AcceptTabs      =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   1
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   104
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      ScrollSpeed     =   20
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   102
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   476
   End
   Begin FadedSeparator LeftBorder
      AcceptFocus     =   False
      AcceptTabs      =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   236
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   104
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      ScrollSpeed     =   20
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   103
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   1
   End
   Begin FadedSeparator BottomBorder
      AcceptFocus     =   False
      AcceptTabs      =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   1
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   104
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      ScrollSpeed     =   20
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   339
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   476
   End
   Begin FadedSeparator RightBorder
      AcceptFocus     =   False
      AcceptTabs      =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   236
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   579
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      ScrollSpeed     =   20
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   103
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   1
   End
   Begin PagePanel Pages
      AllowAutoDeactivate=   True
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   236
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   105
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   4
      Panels          =   ""
      Scope           =   2
      SelectedPanelIndex=   3
      TabIndex        =   8
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   103
      Transparent     =   False
      Value           =   3
      Visible         =   True
      Width           =   474
      Begin Label CheckingLabel
         AllowAutoDeactivate=   True
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   125
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Checking for solution…"
         TextAlign       =   "0"
         TextAlignment   =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Tooltip         =   ""
         Top             =   123
         Transparent     =   False
         Underline       =   False
         Value           =   "Checking for solution…"
         Visible         =   True
         Width           =   434
      End
      Begin ProgressBar CheckingIndicator
         AllowAutoDeactivate=   True
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Indeterminate   =   False
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Left            =   125
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Maximum         =   0
         MaximumValue    =   0
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   1
         Tooltip         =   ""
         Top             =   155
         Transparent     =   False
         Value           =   0.0
         Visible         =   True
         Width           =   434
      End
      Begin Label PermissionLabel
         AllowAutoDeactivate=   True
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   70
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   125
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   True
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Your privacy settings prevent Beacon from looking for a solution to this problem. Would you like to allow a one-time connection? No information about you or your computer will be sent to Beacon's server."
         TextAlign       =   "0"
         TextAlignment   =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Tooltip         =   ""
         Top             =   123
         Transparent     =   False
         Underline       =   False
         Value           =   "Your privacy settings prevent Beacon from looking for a solution to this problem. Would you like to allow a one-time connection? No information about you or your computer will be sent to Beacon's server."
         Visible         =   True
         Width           =   434
      End
      Begin UITweaks.ResizedPushButton PermissionButton
         AllowAutoDeactivate=   True
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Allow Connection"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   274
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   "0"
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Tooltip         =   ""
         Top             =   205
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   135
      End
      Begin LinkLabel PermissionPolicyLabel
         AllowAutoDeactivate=   True
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "SmallSystem"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   125
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         ShowAsLink      =   True
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Privacy Policy"
         TextAlign       =   "1"
         TextAlignment   =   "2"
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Tooltip         =   ""
         Top             =   237
         Transparent     =   False
         Underline       =   True
         URL             =   ""
         Value           =   "Privacy Policy"
         Visible         =   True
         Width           =   434
      End
      Begin Label SolutionLabel
         AllowAutoDeactivate=   True
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   38
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   125
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   True
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Good news! It seems like there is more information about this problem available online."
         TextAlign       =   "0"
         TextAlignment   =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Tooltip         =   ""
         Top             =   123
         Transparent     =   False
         Underline       =   False
         Value           =   "Good news! It seems like there is more information about this problem available online."
         Visible         =   True
         Width           =   434
      End
      Begin UITweaks.ResizedPushButton SolutionOpenButton
         AllowAutoDeactivate=   True
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "View Online"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   287
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   "0"
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Tooltip         =   ""
         Top             =   173
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   110
      End
      Begin Label NoSolutionLabel
         AllowAutoDeactivate=   True
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   90
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   125
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   True
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "Unfortunately, Beacon could not find any new information about this problem. You may be the first to experience it.\n\nIf the error happens consistently, please report it with as much detail as possible. Doing so may help other users."
         TextAlign       =   "0"
         TextAlignment   =   "1"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Tooltip         =   ""
         Top             =   123
         Transparent     =   False
         Underline       =   False
         Value           =   "Unfortunately, Beacon could not find any new information about this problem. You may be the first to experience it.\n\nIf the error happens consistently, please report it with as much detail as possible. Doing so may help other users."
         Visible         =   True
         Width           =   434
      End
      Begin UITweaks.ResizedPushButton ReportButton
         AllowAutoDeactivate=   True
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Add Comments"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   281
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   "0"
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Tooltip         =   ""
         Top             =   225
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   121
      End
   End
   Begin Label ErrorIDLabel
      AllowAutoDeactivate=   True
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Error ID: <hash>"
      TextAlign       =   "0"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Tooltip         =   ""
      Top             =   361
      Transparent     =   False
      Underline       =   False
      Value           =   "Error ID: <hash>"
      Visible         =   True
      Width           =   475
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub BeginChecking()
		  Self.Pages.SelectedPanelIndex = Self.PageStart
		  
		  Dim Trace() As StackFrame = Self.mExceptionDetails.Value("Trace")
		  Dim Lines() As String
		  For Each Frame As StackFrame In Trace
		    Lines.Append(Frame.Name)
		  Next
		  
		  Dim Fields As New Dictionary
		  Fields.Value("build") = App.BuildNumber.ToString
		  Fields.Value("hash") = Self.mExceptionHash
		  Fields.Value("type") = Self.mExceptionDetails.Value("Type")
		  Fields.Value("reason") = Self.mExceptionDetails.Value("Reason")
		  Fields.Value("location") = Self.mExceptionDetails.Value("Location")
		  Fields.Value("trace") = Lines.Join(Encodings.UTF8.Chr(10))
		  If Self.mExceptionDetails.HasKey("UserID") Then
		    Fields.Value("user_id") = Self.mExceptionDetails.Value("UserID")
		  End If
		  
		  SimpleHTTP.Post(Beacon.WebURL("/reportaproblem.php"), Fields, AddressOf Reporter_Callback, Nil)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub Present(Dict As Dictionary)
		  Dim Trace() As StackFrame = Dict.Value("Trace")
		  Dim Lines() As String
		  Lines.Append(Dict.Value("Type"))
		  Lines.Append(Dict.Value("Reason"))
		  For Each Frame As StackFrame In Trace
		    Lines.Append(Frame.Name)
		  Next
		  
		  Dim HashContent As String = Lines.Join(Encodings.UTF8.Chr(10))
		  Dim Hash As String = EncodeHex(Crypto.SHA1(HashContent))
		  
		  Dim Win As New ExceptionWindow
		  Win.mExceptionHash = Hash.Lowercase
		  Win.mExceptionDetails = Dict
		  Win.ShowModal()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Reporter_Callback(URL As String, Status As Integer, Content As MemoryBlock, Tag As Variant)
		  #Pragma Unused URL
		  #Pragma Unused Tag
		  
		  If Status <> 200 Then
		    Self.Pages.SelectedPanelIndex = Self.PageNoSolution
		    Return
		  End If
		  
		  Try
		    Dim Dict As Dictionary = Beacon.ParseJSON(Content)
		    
		    If Dict.HasKey("solution") And Dict.Value("solution") <> Nil Then
		      Self.Pages.SelectedPanelIndex = Self.PageSolutionFound
		      Self.mSolutionURL = Dict.Value("solution")
		    Else
		      Self.Pages.SelectedPanelIndex = Self.PageNoSolution
		    End If
		  Catch Err As RuntimeException
		    Self.Pages.SelectedPanelIndex = Self.PageNoSolution
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowModal()
		  If Not Preferences.OnlineEnabled Then
		    Self.Pages.SelectedPanelIndex = Self.PagePermission
		  Else
		    Self.BeginChecking()
		  End If
		  
		  Self.ErrorIDLabel.Value = Self.ErrorIDLabel.Value.Replace("<hash>", Self.mExceptionHash)
		  
		  Super.ShowModal()
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mExceptionDetails As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mExceptionHash As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSolutionURL As String
	#tag EndProperty


	#tag Constant, Name = PageNoSolution, Type = Double, Dynamic = False, Default = \"4", Scope = Private
	#tag EndConstant

	#tag Constant, Name = PagePermission, Type = Double, Dynamic = False, Default = \"1", Scope = Private
	#tag EndConstant

	#tag Constant, Name = PageSolutionFound, Type = Double, Dynamic = False, Default = \"2", Scope = Private
	#tag EndConstant

	#tag Constant, Name = PageStart, Type = Double, Dynamic = False, Default = \"0", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events LogoCanvas
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #Pragma Unused Areas
		  
		  G.DrawPicture(LogoColor, 0, 0, G.Width, G.Height, 0, 0, LogoColor.Width, LogoColor.Height)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events QuitButton
	#tag Event
		Sub Pressed()
		  App.Terminate(0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Pages
	#tag Event
		Sub PanelChanged()
		  Self.QuitButton.Enabled = Me.SelectedPanelIndex <> Self.PageStart
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PermissionButton
	#tag Event
		Sub Pressed()
		  Self.BeginChecking()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PermissionPolicyLabel
	#tag Event
		Sub Opening()
		  Me.URL = Beacon.WebURL("/privacy.php")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SolutionOpenButton
	#tag Event
		Sub Pressed()
		  If Self.mSolutionURL <> "" Then
		    ShowURL(Self.mSolutionURL)
		  Else
		    App.ShowBugReporter(Self.mExceptionHash)
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ReportButton
	#tag Event
		Sub Pressed()
		  App.ShowBugReporter(Self.mExceptionHash)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="MinWidth"
		Visible=false
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=false
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=false
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=false
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=false
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=false
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=false
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=false
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=false
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=false
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=false
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=false
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
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
		Name="Interfaces"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
