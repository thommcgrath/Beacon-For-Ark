#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyResourcesLinux
					AppliesTo = 0
					Architecture = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vLi4vRm9udHMv
				End
				Begin IDEScriptBuildStep DownloadClassesDebugLinux , AppliesTo = 1, Architecture = 0
					Var AppName As String = CurrentBuildAppName
					If TargetMacOS Then
					Var ResourcesPath As String = CurrentBuildLocationNative + "/" + AppName + " Resources"
					Call DoShellCommand("/usr/bin/curl https://lab.usebeacon.app/download/complete?version=" + ConstantValue("LocalData.EngramsVersion") + " > '" + ResourcesPath + "/Complete.beacondata'")
					End If
				End
				Begin IDEScriptBuildStep DownloadClassesBuildLinux , AppliesTo = 2, Architecture = 0
					Var AppName As String = CurrentBuildAppName
					If TargetMacOS Then
					Var ResourcesPath As String = CurrentBuildLocationNative + "/" + AppName + " Resources"
					Call DoShellCommand("/usr/bin/curl https://usebeacon.app/download/complete?version=" + ConstantValue("LocalData.EngramsVersion") + " > '" + ResourcesPath + "/Complete.beacondata'")
					End If
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin IDEScriptBuildStep UpdateInfoPlist , AppliesTo = 0, Architecture = 0
					Var App As String = CurrentBuildLocation + "/""" + CurrentBuildAppName + ".app"""
					Call DoShellCommand("/usr/bin/defaults write " + App + "/Contents/Info ""CFBundleURLTypes"" ""( { CFBundleURLName = Beacon; CFBundleTypeRole = Editor; CFBundleURLSchemes = (" + ConstantValue("Beacon.URLScheme") + "); } )""")
					Call DoShellCommand("/usr/bin/defaults write " + App + "/Contents/Info ""ATSApplicationFontsPath"" ""Fonts/""")
					Call DoShellCommand("/usr/bin/defaults write " + App + "/Contents/Info ""LSMinimumSystemVersion"" ""10.12.0""")
					Call DoShellCommand("/usr/bin/defaults write " + App + "/Contents/Info ""NSAppAccentColorName"" ""BeaconBrand""")
				End
				Begin CopyFilesBuildStep CopyResourcesMac
					AppliesTo = 0
					Architecture = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vLi4vRm9udHMv
				End
				Begin CopyFilesBuildStep CopyMigration
					AppliesTo = 2
					Architecture = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vLi4vSW5zdGFsbGVycy9NYWMvY29udGFpbmVyLW1pZ3JhdGlvbi5wbGlzdA==
				End
				Begin IDEScriptBuildStep BuildMacAssets , AppliesTo = 0, Architecture = 0
					If TargetMacOS Then
					Var App As String = CurrentBuildLocation + "/""" + CurrentBuildAppName + ".app"""
					Call DoShellCommand("actool --compile " + App + "/Contents/Resources --platform macosx --minimum-deployment-target 10.11 ""${PROJECT_PATH}/Assets.xcassets""")
					End If
				End
				Begin IDEScriptBuildStep DownloadClassesDebugMac , AppliesTo = 3, Architecture = 0
					If TargetMacOS Then
					Var App As String = CurrentBuildLocation + "/""" + CurrentBuildAppName + ".app"""
					Call DoShellCommand("/usr/bin/curl -L 'https://lab.usebeacon.app/download/complete?version=" + ConstantValue("LocalData.EngramsVersion") + "' > " + App + "/Contents/Resources/Complete.beacondata")
					End If
				End
				Begin IDEScriptBuildStep DownloadClassesBuildMac , AppliesTo = 2, Architecture = 0
					If TargetMacOS Then
					Var App As String = CurrentBuildLocation + "/""" + CurrentBuildAppName + ".app"""
					Call DoShellCommand("/usr/bin/curl -L 'https://usebeacon.app/download/complete?version=" + ConstantValue("LocalData.EngramsVersion") + "' > " + App + "/Contents/Resources/Complete.beacondata")
					End If
				End
				Begin IDEScriptBuildStep Sign , AppliesTo = 1, Architecture = 0
					Var App As String = CurrentBuildLocation + "/""" + CurrentBuildAppName + ".app"""
					Call DoShellCommand("xattr -clr " + App)
					Call DoShellCommand("codesign -f --options=runtime --deep --timestamp --entitlements ""${PROJECT_PATH}/../Installers/Mac/entitlements.plist"" -s 'Developer ID Application: Thom McGrath' " + App + "/Contents/Frameworks/*.dylib")
					Call DoShellCommand("codesign -f --options=runtime --deep --timestamp --entitlements ""${PROJECT_PATH}/../Installers/Mac/entitlements.plist"" -s 'Developer ID Application: Thom McGrath' " + App + "/Contents/Frameworks/*.framework")
					Call DoShellCommand("codesign -f --options=runtime --deep --timestamp --entitlements ""${PROJECT_PATH}/../Installers/Mac/entitlements.plist"" -s 'Developer ID Application: Thom McGrath' " + App)
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyResourcesWindows
					AppliesTo = 0
					Architecture = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vLi4vRm9udHMv
				End
				Begin IDEScriptBuildStep DownloadClassesDebugWin , AppliesTo = 3, Architecture = 0
					Var AppName As String = Left(CurrentBuildAppName, Len(CurrentBuildAppName) - 4)
					If TargetWindows Then
					Var ResourcesPath As String = CurrentBuildLocationNative + "\" + AppName + " Resources"
					Call DoShellCommand("powershell -Command ""Invoke-WebRequest https://lab.usebeacon.app/download/complete?version=" + ConstantValue("LocalData.EngramsVersion") + " -OutFile '" + ResourcesPath + "\Complete.beacondata'""")
					ElseIf TargetMacOS Then
					Var ResourcesPath As String = CurrentBuildLocationNative + "/" + AppName + " Resources"
					Call DoShellCommand("/usr/bin/curl https://lab.usebeacon.app/download/complete?version=" + ConstantValue("LocalData.EngramsVersion") + " > '" + ResourcesPath + "/Complete.beacondata'")
					End If
				End
				Begin IDEScriptBuildStep DownloadClassesBuildWin , AppliesTo = 2, Architecture = 0
					Var AppName As String = Left(CurrentBuildAppName, Len(CurrentBuildAppName) - 4)
					If TargetWindows Then
					Var ResourcesPath As String = CurrentBuildLocationNative + "\" + AppName + " Resources"
					Call DoShellCommand("powershell -Command ""Invoke-WebRequest https://usebeacon.app/download/complete?version=" + ConstantValue("LocalData.EngramsVersion") + " -OutFile '" + ResourcesPath + "\Complete.beacondata'""")
					ElseIf TargetMacOS Then
					Var ResourcesPath As String = CurrentBuildLocationNative + "/" + AppName + " Resources"
					Call DoShellCommand("/usr/bin/curl https://usebeacon.app/download/complete?version=" + ConstantValue("LocalData.EngramsVersion") + " > '" + ResourcesPath + "/Complete.beacondata'")
					End If
				End
			End
#tag EndBuildAutomation
