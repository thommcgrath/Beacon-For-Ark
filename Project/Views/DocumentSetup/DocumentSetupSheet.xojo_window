#tag Window
Begin Window DocumentSetupSheet
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   False
   Compatibility   =   ""
   Composite       =   False
   Frame           =   8
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   496
   ImplicitInstance=   False
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   496
   MaximizeButton  =   False
   MaxWidth        =   511
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   124
   MinimizeButton  =   False
   MinWidth        =   511
   Placement       =   1
   Resizeable      =   False
   Title           =   "Document Setup"
   Visible         =   True
   Width           =   511
   Begin PagePanel Pages
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   496
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   4
      Panels          =   ""
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      Top             =   0
      Value           =   1
      Visible         =   True
      Width           =   511
      Begin Label FinalizeMessageLabel
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "Document Settings"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   20
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   471
      End
      Begin GroupBox MapGroup
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Supported Maps"
         Enabled         =   True
         Height          =   140
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   52
         Underline       =   False
         Visible         =   True
         Width           =   471
         Begin CheckBox MapCheck
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "The Island"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   1
            InitialParent   =   "MapGroup"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   2
            State           =   0
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   88
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   174
         End
         Begin CheckBox MapCheck
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Scorched Earth"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   2
            InitialParent   =   "MapGroup"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   2
            State           =   0
            TabIndex        =   2
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   120
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   174
         End
         Begin CheckBox MapCheck
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Aberration"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   16
            InitialParent   =   "MapGroup"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   2
            State           =   0
            TabIndex        =   4
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   152
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   174
         End
         Begin CheckBox MapCheck
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "The Center"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   4
            InitialParent   =   "MapGroup"
            Italic          =   False
            Left            =   226
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   2
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   88
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   174
         End
         Begin CheckBox MapCheck
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Ragnarok"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   8
            InitialParent   =   "MapGroup"
            Italic          =   False
            Left            =   226
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   2
            State           =   0
            TabIndex        =   3
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   120
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   174
         End
      End
      Begin GroupBox DifficultyGroup
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Difficulty"
         Enabled         =   True
         Height          =   240
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   204
         Underline       =   False
         Visible         =   True
         Width           =   471
         Begin Label DifficultyExplanationLabel
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "DifficultyGroup"
            Italic          =   False
            Left            =   40
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
            Text            =   "You only need to enter one of these values, the rest will be calculated automatically. All selected maps must use the same difficulty, otherwise Beacon will produce incorrect quality items."
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   240
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   431
         End
         Begin UITweaks.ResizedLabel DifficultyOffsetLabel
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "DifficultyGroup"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   2
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Difficulty Offset:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   302
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin UITweaks.ResizedTextField DifficultyOffsetField
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "DifficultyGroup"
            Italic          =   False
            Left            =   159
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   2
            TabIndex        =   2
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   302
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin UITweaks.ResizedTextField DifficultyValueField
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "DifficultyGroup"
            Italic          =   False
            Left            =   159
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   2
            TabIndex        =   4
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   336
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin UITweaks.ResizedTextField MaxDinoLevelField
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "DifficultyGroup"
            Italic          =   False
            Left            =   159
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   2
            TabIndex        =   6
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   370
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
         End
         Begin UITweaks.ResizedLabel DifficultyValueLabel
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "DifficultyGroup"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   2
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Difficulty Value:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   336
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin UITweaks.ResizedLabel MaxDinoLevelLabel
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "DifficultyGroup"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   2
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Max Dino Level:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   370
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
         Begin LinkLabel DifficultyDetailsLink
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "DifficultyGroup"
            Italic          =   False
            Left            =   159
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   2
            Selectable      =   False
            TabIndex        =   8
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "http://ark.gamepedia.com/Difficulty"
            TextAlign       =   0
            TextColor       =   &c0000FF00
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   404
            Transparent     =   False
            Underline       =   True
            Visible         =   True
            Width           =   312
         End
         Begin Label DifficultyDetailsLabel
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "DifficultyGroup"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   2
            Selectable      =   False
            TabIndex        =   7
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Learn More:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   404
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   107
         End
      End
      Begin UITweaks.ResizedPushButton FinalizeActionButton
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Create"
         Default         =   True
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   456
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin UITweaks.ResizedPushButton FinalizeCancelButton
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   True
         Caption         =   "Back"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   319
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   456
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label IntroMessageLabel
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   20
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
         Text            =   "New Document"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   20
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   471
      End
      Begin RadioButton ImportServerRadio
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Import settings from a server"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   52
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   471
      End
      Begin Label ImportServerExplanation
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   110
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   True
         Scope           =   2
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "With this option, Beacon will download the GameUserSettings.ini and Game.ini files from a server using FTP and create a document with the current map, difficulty, and loot settings. Beacon will be able to upload changes back to the server.\n\nFTP credentials will be sent to Beacon's server, which will make the connections. These credentials will not be stored on the server in any way."
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   84
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   431
      End
      Begin RadioButton ImportLocalRadio
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Import settings from this computer"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   206
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   471
      End
      Begin Label ImportLocalExplanation
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   51
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   True
         Scope           =   2
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Beacon can import the GameUserSettings and Game.ini from this computer to obtain current loot settings, map, and difficulty settings. Automatic deployment can be enabled after import."
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   238
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   431
      End
      Begin RadioButton CreateEmptyRadio
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Create a document from scratch"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   301
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   471
      End
      Begin Label CreateEmptyExplanation
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   True
         Scope           =   2
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Start with an empty file. Automatic deployment can be enabled later."
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   333
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   431
      End
      Begin PushButton IntroActionButton
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Next"
         Default         =   True
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   8
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   365
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton IntroCancelButton
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   True
         Caption         =   "Cancel"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   319
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   365
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label ProgressMessageLabel
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Importing Config…"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   20
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   471
      End
      Begin ProgressBar ProgressIndicator
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Maximum         =   0
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   3
         Top             =   222
         Value           =   0
         Visible         =   True
         Width           =   471
      End
      Begin Label ProgressStatus
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Downloading files…"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "SmallSystem"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   254
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   471
      End
      Begin UITweaks.ResizedTextField ServerHostField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   118
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   52
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   373
      End
      Begin Label ServerMessageLabel
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Server Settings"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   20
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   471
      End
      Begin UITweaks.ResizedLabel ServerHostLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Host:"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   52
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   86
      End
      Begin UITweaks.ResizedTextField ServerPortField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   118
         LimitText       =   5
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   "#####"
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "21"
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   86
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   84
      End
      Begin UITweaks.ResizedLabel ServerPortLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Port:"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   86
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   86
      End
      Begin UITweaks.ResizedTextField ServerUserField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   118
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   6
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   120
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   373
      End
      Begin UITweaks.ResizedLabel ServerUserLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Username:"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   120
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   86
      End
      Begin UITweaks.ResizedTextField ServerPassField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   118
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   True
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   8
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   154
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   373
      End
      Begin UITweaks.ResizedLabel ServerPassLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Password:"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   154
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   86
      End
      Begin PushButton ServerActionButton
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Connect"
         Default         =   True
         Enabled         =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   12
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   220
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton ServerCancelButton
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   True
         Caption         =   "Cancel"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   319
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   11
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   220
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin UITweaks.ResizedTextField ServerPathField
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   "Optional"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   118
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   10
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   188
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   373
      End
      Begin UITweaks.ResizedLabel ServerPathLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Pages"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Path Prefix:"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   188
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   86
      End
   End
   Begin Beacon.ImportThread Importer
      Index           =   -2147483648
      LockedInPosition=   False
      Priority        =   0
      Scope           =   2
      StackSize       =   ""
      State           =   ""
      TabPanelIndex   =   0
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Self.DifficultyOffsetField.Text = "1"
		  Self.SwapButtons()
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  Self.Resize()
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  Self.Resize()
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub APICallback_Discovery(Success As Boolean, Message As Text, Details As Auto)
		  If Not Success Then
		    Self.ShowAlert("Unable to connect to server", "Server said '" + Message + "'")
		    Self.Pages.Value = Self.PageServerIndex
		    Return
		  End If
		  
		  Dim Dict As Xojo.Core.Dictionary = Details
		  If Not Dict.HasAllKeys("Game.ini", "GameUserSettings.ini") Then
		    If Not Self.ShowConfirm("Could not find config files", "Beacon was unable to find the server's Game.ini and GameUserSettings.ini files. Would you like to continue without them?", "Continue", "Cancel") Then
		      Self.Pages.Value = Self.PageServerIndex
		      Return
		    End If
		  End If
		  
		  Dim Pieces() As Text
		  Pieces.Append("host=" + Beacon.EncodeURLComponent(Self.ServerHostField.Text.ToText))
		  Pieces.Append("port=" + Beacon.EncodeURLComponent(Self.ServerPortField.Text.ToText))
		  Pieces.Append("user=" + Beacon.EncodeURLComponent(Self.ServerUserField.Text.ToText))
		  Pieces.Append("pass=" + Beacon.EncodeURLComponent(Self.ServerPassField.Text.ToText))
		  
		  Dim Query As Text = Text.Join(Pieces, "&")
		  Dim GamePath As Text = Dict.Value("Game.ini")
		  Dim SettingsPath As Text = Dict.Value("GameUserSettings.ini")
		  
		  Dim SettingsRequest As New BeaconAPI.Request("ftp.php?" + Query + "&path=" + Beacon.EncodeURLComponent(GamePath) + "&ref=GameUserSettings", "GET", WeakAddressOf APICallback_DownloadConfigFile)
		  SettingsRequest.Sign(App.Identity)
		  BeaconAPI.Send(SettingsRequest)
		  
		  Dim GameRequest As New BeaconAPI.Request("ftp.php?" + Query + "&path=" + Beacon.EncodeURLComponent(GamePath) + "&ref=Game", "GET", WeakAddressOf APICallback_DownloadConfigFile)
		  GameRequest.Sign(App.Identity)
		  BeaconAPI.Send(GameRequest)
		  
		  Self.mDownloadedSettings = False
		  
		  Self.Importer.Clear()
		  Self.Importer.SetDiscoveryDict(Dict)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub APICallback_DownloadConfigFile(Success As Boolean, Message As Text, Details As Auto)
		  // GameUserSettings.ini will come first
		  
		  If Success Then
		    Dim Dict As Xojo.Core.Dictionary = Details
		    Dim Content As Text = Dict.Value("content")
		    Dim Ref As Text = Dict.Value("ref")
		    Self.Importer.AddContent(Content)
		    
		    Select Case Ref
		    Case "GameUserSettings"
		      Self.mDownloadedSettings = True
		    Case "Game"
		      If Self.mDownloadedSettings Then
		        Self.FinishDownloads()
		      Else
		        Break
		      End If
		    End Select
		  Else
		    If Self.Pages.Value = Self.PageProgressIndex Then
		      Self.ShowAlert("Unable to download config", "Server said " + Message)
		      Self.Pages.Value = Self.PageServerIndex
		    End If
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub BeginServerImport()
		  Dim Pieces() As Text
		  Pieces.Append("host=" + Beacon.EncodeURLComponent(Self.ServerHostField.Text.ToText))
		  Pieces.Append("port=" + Beacon.EncodeURLComponent(Self.ServerPortField.Text.ToText))
		  Pieces.Append("user=" + Beacon.EncodeURLComponent(Self.ServerUserField.Text.ToText))
		  Pieces.Append("pass=" + Beacon.EncodeURLComponent(Self.ServerPassField.Text.ToText))
		  If Self.ServerPathField.Text <> "" Then
		    Pieces.Append("path=" + Beacon.EncodeURLComponent(Self.ServerPathField.Text.ToText))
		  End If
		  
		  Dim URL As Text = "ftp.php/discover?" + Text.Join(Pieces, "&")
		  Dim DiscoveryRequest As New BeaconAPI.Request(URL, "GET", WeakAddressOf APICallback_Discovery)
		  DiscoveryRequest.Sign(App.Identity)
		  BeaconAPI.Send(DiscoveryRequest)
		  
		  Self.ProgressStatus.Text = "Inspecting Server..."
		  Self.Pages.Value = Self.PageProgressIndex
		  
		  #if false
		    Dim FTPSettings As Beacon.FTPProfile = FTPProfileDialog.Present(Self.mFTPSettings)
		    If FTPSettings <> Nil Then
		      Self.mFTPSettings = FTPSettings
		      
		      Dim Hash As Text = FTPSettings.Hash
		      Dim GameIniRequest As New BeaconAPI.Request("ftp.php" + FTPSettings.GameIniURL + "&ref=Game" + Hash, "GET", WeakAddressOf APICallback_DownloadConfigFile)
		      Dim GameUserSettingsIniRequest As New BeaconAPI.Request("ftp.php" + FTPSettings.GameUserSettingsIniURL + "&ref=GameUserSettings" + Hash, "GET", WeakAddressOf APICallback_DownloadConfigFile)
		      GameIniRequest.Sign(App.Identity)
		      GameUserSettingsIniRequest.Sign(App.Identity)
		      
		      BeaconAPI.Send(GameIniRequest)
		      BeaconAPI.Send(GameUserSettingsIniRequest)
		      
		      
		    Else
		      Self.Pages.Value = Self.PageIntroIndex
		    End If
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CheckServerActionButton()
		  Self.ServerActionButton.Enabled = ServerHostField.Text <> "" And Val(ServerPortField.Text) > 0 And ServerUserField.Text <> "" And ServerPassField.Text <> ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DetectConfigType(File As FolderItem) As ConfigFileType
		  If File = Nil Then
		    Return ConfigFileType.Other
		  End If
		  
		  Dim Stream As TextInputStream = TextInputStream.Open(File)
		  Dim Content As String = Stream.ReadAll(Encodings.UTF8)
		  Stream.Close
		  
		  Return DetectConfigType(Content)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DetectConfigType(Content As String) As ConfigFileType
		  Const GameIniHeader = "[/Script/ShooterGame.ShooterGameMode]"
		  Const GameUserSettingsIniHeader = "[/Script/ShooterGame.ShooterGameUserSettings]"
		  
		  If Content.InStr(GameIniHeader) > 0 Then
		    Return ConfigFileType.GameIni
		  ElseIf Content.InStr(GameUserSettingsIniHeader) > 0 Then
		    Return ConfigFileType.GameUserSettingsIni
		  Else
		    Return ConfigFileType.Other
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub FinishDownloads()
		  // At least one of mGameIniFile and mGameUserSettingsIniFile will exist, hopefully both
		  
		  Self.ProgressStatus.Text = "Processing files..."
		  
		  Self.Importer.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Present(Parent As Window) As Beacon.Document
		  Dim Win As New DocumentSetupSheet
		  Win.Height = DocumentSetupSheet.PageIntroHeight
		  Win.Title = "New Document"
		  Win.FinalizeActionButton.Caption = "Create"
		  Win.FinalizeCancelButton.Caption = "Back"
		  Win.Pages.Value = DocumentSetupSheet.PageIntroIndex
		  Win.ShowModalWithin(Parent.TrueWindow)
		  
		  If Win.mCancelled Then
		    Win.Close
		    Return Nil
		  End If
		  
		  Dim Document As Beacon.Document = Win.mDocument
		  Win.Close
		  Return Document
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Present(Parent As Window, Document As Beacon.Document) As Boolean
		  Dim Win As New DocumentSetupSheet
		  Win.Height = DocumentSetupSheet.PageFinalizeHeight
		  Win.mDocument = Document
		  Win.Title = "Edit Document"
		  Win.FinalizeActionButton.Caption = "Edit"
		  Win.FinalizeCancelButton.Caption = "Cancel"
		  Win.Pages.Value = DocumentSetupSheet.PageFinalizeIndex
		  Win.ShowModalWithin(Parent.TrueWindow)
		  
		  Dim Cancelled As Boolean = Win.mCancelled
		  Win.Close
		  
		  Return Not Cancelled
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Present(Parent As Window, SourceFile As FolderItem) As Beacon.Document
		  Dim Win As New DocumentSetupSheet
		  If Not Win.SetupLocalImportWithFile(SourceFile) Then
		    Win.Close
		    Return Nil
		  End If
		  
		  Win.Height = DocumentSetupSheet.PageProgressHeight
		  Win.Title = "Import Local Config"
		  Win.FinalizeActionButton.Caption = "Import"
		  Win.FinalizeCancelButton.Caption = "Cancel"
		  Win.Pages.Value = DocumentSetupSheet.PageProgressIndex
		  Win.FinishDownloads()
		  Win.ShowModalWithin(Parent.TrueWindow)
		  
		  If Win.mCancelled Then
		    Win.Close
		    Return Nil
		  End If
		  
		  Dim Document As Beacon.Document = Win.mDocument
		  Win.Close
		  Return Document
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PresentLocalImport()
		  Dim Dialog As New OpenDialog
		  Dialog.SuggestedFileName = "Game.ini"
		  Dialog.Filter = BeaconFileTypes.IniFile
		  Dialog.PromptText = "Please select a Game.ini or GameUserSettings.ini file"
		  
		  Dim File As FolderItem = Dialog.ShowModal()
		  If File = Nil Then
		    Return
		  End If
		  
		  If Self.SetupLocalImportWithFile(File) Then
		    Self.Pages.Value = Self.PageProgressIndex
		    Self.FinishDownloads()
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Resize()
		  Dim ImportContentHeight As Integer = Self.ProgressIndicator.Height + 12 + Self.ProgressStatus.Height
		  Dim ImportContentTop As Integer = Max(Self.ProgressMessageLabel.Top + Self.ProgressMessageLabel.Height + 12, (Self.Height - ImportContentHeight) / 2)
		  
		  Self.ProgressIndicator.Top = ImportContentTop
		  Self.ProgressStatus.Top = Self.ProgressIndicator.Top + Self.ProgressIndicator.Height + 12
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectedMaps() As Beacon.Map()
		  Return Beacon.Maps.ForMask(Self.SelectedMask)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectedMaps(Assigns Maps() As Beacon.Map)
		  Self.SelectedMask = Maps.Mask
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SelectedMask() As UInt64
		  Dim Mask As UInt64
		  Dim Maps() As Beacon.Map = Beacon.Maps.All
		  For Each Map As Beacon.Map In Maps
		    If MapCheck(Map.Mask) <> Nil And MapCheck(Map.Mask).Value Then
		      Mask = Mask Or Map.Mask
		    End If
		  Next
		  Return Mask
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SelectedMask(Assigns Mask As UInt64)
		  Dim Maps() As Beacon.Map = Beacon.Maps.All
		  For Each Map As Beacon.Map In Maps
		    If MapCheck(Map.Mask) <> Nil Then
		      MapCheck(Map.Mask).Value = (Map.Mask And Mask) = Map.Mask
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SetupLocalImportWithFile(FirstFile As FolderItem) As Boolean
		  Dim FirstFileType As ConfigFileType = Self.DetectConfigType(FirstFile)
		  Dim OtherFileName As String
		  Dim DesiredOtherFileType As ConfigFileType
		  Select Case FirstFileType
		  Case ConfigFileType.Other
		    Self.ShowAlert("Unknown config file", "Sorry, Beacon can't determine which config file this is.")
		    Return False
		  Case ConfigFileType.GameIni
		    OtherFileName = "GameUserSettings.ini"
		    DesiredOtherFileType = ConfigFileType.GameUserSettingsIni
		  Case ConfigFileType.GameUserSettingsIni
		    OtherFileName = "Game.ini"
		    DesiredOtherFileType = ConfigFileType.GameIni
		  End Select
		  
		  Dim Parent As FolderItem = FirstFile.Parent
		  Dim SecondFile As FolderItem = Parent.Child(OtherFileName)
		  If SecondFile = Nil Or SecondFile.Exists = False Then
		    // Couldn't find the sibling file
		    Dim Dialog As New OpenDialog
		    Dialog.SuggestedFileName = OtherFileName
		    Dialog.PromptText = "Now please select " + OtherFileName
		    
		    SecondFile = Dialog.ShowModal()
		  End If
		  
		  Dim SecondFileType As ConfigFileType = Self.DetectConfigType(SecondFile)
		  If SecondFileType <> DesiredOtherFileType Then
		    If Not Self.ShowConfirm("Do you want to do a partial import?", "Beacon couldn't find both Game.ini and GameUserSettings.ini files. Beacon can do a partial import, but you will need to fill in some settings yourself.", "Import Anyway", "Cancel") Then
		      Return False
		    End If
		  End If
		  
		  If FirstFileType = ConfigFileType.GameIni Then
		    Self.Importer.AddContent(SecondFile)
		    Self.Importer.AddContent(FirstFile)
		  Else
		    Self.Importer.AddContent(FirstFile)
		    Self.Importer.AddContent(SecondFile)
		  End If
		  
		  Return True
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mCancelled As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDocument As Beacon.Document
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDownloadedSettings As Boolean
	#tag EndProperty


	#tag Constant, Name = PageFinalizeHeight, Type = Double, Dynamic = False, Default = \"496", Scope = Private
	#tag EndConstant

	#tag Constant, Name = PageFinalizeIndex, Type = Double, Dynamic = False, Default = \"3", Scope = Private
	#tag EndConstant

	#tag Constant, Name = PageIntroHeight, Type = Double, Dynamic = False, Default = \"405", Scope = Private
	#tag EndConstant

	#tag Constant, Name = PageIntroIndex, Type = Double, Dynamic = False, Default = \"0", Scope = Private
	#tag EndConstant

	#tag Constant, Name = PageProgressHeight, Type = Double, Dynamic = False, Default = \"124", Scope = Private
	#tag EndConstant

	#tag Constant, Name = PageProgressIndex, Type = Double, Dynamic = False, Default = \"2", Scope = Private
	#tag EndConstant

	#tag Constant, Name = PageServerHeight, Type = Double, Dynamic = False, Default = \"260", Scope = Private
	#tag EndConstant

	#tag Constant, Name = PageServerIndex, Type = Double, Dynamic = False, Default = \"1", Scope = Private
	#tag EndConstant


	#tag Enum, Name = ConfigFileType, Type = Integer, Flags = &h21
		GameIni
		  GameUserSettingsIni
		Other
	#tag EndEnum


#tag EndWindowCode

#tag Events Pages
	#tag Event
		Sub Change()
		  Dim DesiredHeight As Integer
		  Select Case Me.Value
		  Case Self.PageIntroIndex
		    DesiredHeight = Self.PageIntroHeight
		  Case Self.PageServerIndex
		    DesiredHeight = Self.PageServerHeight
		  Case Self.PageProgressIndex
		    DesiredHeight = Self.PageProgressHeight
		  Case Self.PageFinalizeIndex
		    DesiredHeight = Self.PageFinalizeHeight
		  Else
		    DesiredHeight = Self.Height
		  End Select
		  
		  If Self.Height <> DesiredHeight Then
		    Dim Task As New AnimationKit.MoveTask(Self)
		    Task.Height = DesiredHeight
		    Task.Curve = AnimationKit.Curve.CreateEaseOut
		    Task.DurationInSeconds = 0.15
		    Task.Run
		  End If
		  
		  If Me.Value = Self.PageFinalizeIndex Then
		    Dim Mask As UInt64
		    If Self.mDocument.MapCompatibility > 0 Then
		      Mask = Self.mDocument.MapCompatibility
		    Else
		      Mask = Beacon.Maps.GuessMap(Self.mDocument.LootSources)
		    End If
		    
		    Dim SelectedMaps() As Beacon.Map = Beacon.Maps.ForMask(Mask)
		    Dim DifficultyScale As Double
		    Dim DifficultyMatches As Boolean = True
		    For Each Map As Beacon.Map In SelectedMaps
		      DifficultyScale = Max(DifficultyScale, Map.DifficultyScale)
		      DifficultyMatches = DifficultyMatches And (DifficultyScale = Map.DifficultyScale)
		    Next
		    
		    Dim DifficultyValue As Double = Self.mDocument.DifficultyValue
		    If DifficultyValue = -1 Then
		      DifficultyValue = Beacon.DifficultyValue(1.0, DifficultyScale)
		    End If
		    
		    Self.SelectedMask = Mask
		    
		    Dim DifficultyOffset As Double = Beacon.DifficultyOffset(DifficultyValue, DifficultyScale)
		    Dim MaxDinoLevel As Integer = DifficultyValue * 30
		    
		    Self.DifficultyValueField.Text = DifficultyValue.PrettyText
		    Self.DifficultyOffsetField.Text = DifficultyOffset.PrettyText
		    Self.MaxDinoLevelField.Text = MaxDinoLevel.ToText
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MapCheck
	#tag Event
		Sub Action(index as Integer)
		  Dim Maps() As Beacon.Map = Self.SelectedMaps
		  If Maps.Ubound = -1 Then
		    Self.FinalizeActionButton.Enabled = False
		    Return
		  End If
		  
		  Dim Scale As Double = Maps.DifficultyScale
		  
		  Dim DifficultyOffset As Double = Val(Self.DifficultyOffsetField.Text)
		  Dim DifficultyValue As Double = Beacon.DifficultyValue(DifficultyOffset, Scale)
		  Dim MaxDinoLevel As Integer = DifficultyValue * 30
		  
		  Self.DifficultyValueField.Text = DifficultyValue.PrettyText
		  Self.DifficultyOffsetField.Text = DifficultyOffset.PrettyText
		  Self.MaxDinoLevelField.Text = MaxDinoLevel.ToText
		  
		  Self.FinalizeActionButton.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DifficultyOffsetField
	#tag Event
		Sub TextChange()
		  If Self.Focus = Me Then
		    Dim DifficultyOffset As Double = Val(Me.Text)
		    Dim DifficultyValue As Double = Beacon.DifficultyValue(DifficultyOffset, Self.SelectedMaps.DifficultyScale)
		    Dim MaxDinoLevel As Integer = DifficultyValue * 30
		    
		    Self.DifficultyValueField.Text = DifficultyValue.PrettyText
		    Self.MaxDinoLevelField.Text = MaxDinoLevel.ToText
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DifficultyValueField
	#tag Event
		Sub TextChange()
		  If Self.Focus = Me Then
		    Dim DifficultyValue As Double = Val(Me.Text)
		    Dim DifficultyOffset As Double = Beacon.DifficultyOffset(DifficultyValue, Self.SelectedMaps.DifficultyScale)
		    Dim MaxDinoLevel As Integer = DifficultyValue * 30
		    
		    Self.DifficultyOffsetField.Text = DifficultyOffset.PrettyText
		    Self.MaxDinoLevelField.Text = MaxDinoLevel.ToText
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MaxDinoLevelField
	#tag Event
		Sub TextChange()
		  If Self.Focus = Me Then
		    Dim MaxDinoLevel As Integer = Val(Me.Text)
		    Dim DifficultyValue As Double = MaxDinoLevel / 30
		    Dim DifficultyOffset As Double = Beacon.DifficultyOffset(DifficultyValue, Self.SelectedMaps.DifficultyScale)
		    
		    Self.DifficultyOffsetField.Text = DifficultyOffset.PrettyText
		    Self.DifficultyValueField.Text = DifficultyValue.PrettyText
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DifficultyDetailsLink
	#tag Event
		Sub Action()
		  ShowURL("http://ark.gamepedia.com/Difficulty")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FinalizeActionButton
	#tag Event
		Sub Action()
		  Dim Mask As UInt64 = Self.SelectedMask
		  Dim Sources() As Beacon.LootSource = Self.mDocument.LootSources
		  Dim ValidPresetCount As Integer
		  For Each Source As Beacon.LootSource In Sources
		    If Source.ValidForMask(Mask) Then
		      ValidPresetCount = ValidPresetCount + Source.ImplementedPresetCount()
		    End If
		  Next
		  
		  Dim MapChanged As Boolean = Self.mDocument.MapCompatibility <> Mask
		  Self.mDocument.MapCompatibility = Mask
		  Self.mDocument.DifficultyValue = Val(DifficultyValueField.Text)
		  
		  If MapChanged And ValidPresetCount > 0 And Self.ShowConfirm("Would you like to rebuild your item sets based on their presets?", "Presets fill item sets based on the current map. When changing maps, it is recommended to rebuild the item sets from their original presets to get the most correct loot for the new map.", "Rebuild", "Do Not Rebuild") Then
		    Self.mDocument.ReconfigurePresets()
		  End If
		  
		  Self.mCancelled = False
		  Self.Hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FinalizeCancelButton
	#tag Event
		Sub Action()
		  If Me.Caption = "Back" Then
		    Self.Pages.Value = Self.PageIntroIndex
		  Else
		    Self.mCancelled = True
		    Self.Hide
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IntroActionButton
	#tag Event
		Sub Action()
		  If ImportServerRadio.Value Then
		    Self.Pages.Value = Self.PageServerIndex
		  ElseIf ImportLocalRadio.Value Then
		    Self.PresentLocalImport()
		  ElseIf CreateEmptyRadio.Value Then
		    Self.mDocument = New Beacon.Document
		    Self.Pages.Value = Self.PageFinalizeIndex
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IntroCancelButton
	#tag Event
		Sub Action()
		  Self.mCancelled = True
		  Self.Hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ServerHostField
	#tag Event
		Sub TextChange()
		  Self.CheckServerActionButton()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ServerPortField
	#tag Event
		Sub TextChange()
		  Self.CheckServerActionButton()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ServerUserField
	#tag Event
		Sub TextChange()
		  Self.CheckServerActionButton()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ServerPassField
	#tag Event
		Sub TextChange()
		  Self.CheckServerActionButton()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ServerActionButton
	#tag Event
		Sub Action()
		  Self.BeginServerImport()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ServerCancelButton
	#tag Event
		Sub Action()
		  Self.Pages.Value = Self.PageIntroIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ServerPathField
	#tag Event
		Sub TextChange()
		  Self.CheckServerActionButton()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Importer
	#tag Event
		Sub UpdateUI()
		  Dim ProgressValue As Integer = Round(Me.Progress * Self.ProgressIndicator.Maximum)
		  If Self.ProgressIndicator.Value <> ProgressValue Then
		    Self.ProgressIndicator.Value = ProgressValue
		  End If
		  
		  If Me.Finished Then
		    Self.mDocument = Me.Document
		    
		    Dim Profile As Beacon.FTPProfile
		    If Self.mDocument.FTPProfileCount = 1 Then
		      Profile = Self.mDocument.FTPProfile(0)
		    Else
		      Profile = New Beacon.FTPProfile
		    End If
		    Profile.Host = Self.ServerHostField.Text.ToText
		    Profile.Port = Val(Self.ServerPortField.Text)
		    Profile.Username = Self.ServerUserField.Text.ToText
		    Profile.Password = Self.ServerPassField.Text.ToText
		    If Self.mDocument.FTPProfileCount = 1 Then
		      Self.mDocument.FTPProfile(0) = Profile
		    Else
		      Self.mDocument.AddFTPProfile(Profile)
		    End If
		    
		    Self.FinalizeMessageLabel.Text = "Review Document Settings"
		    Self.Pages.Value = Self.PageFinalizeIndex
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
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
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
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
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
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
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
