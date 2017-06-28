; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Beacon"
#define MyAppVersion "1.0.0b10"
#define MyAppPublisher "The ZAZ Studios"
#define MyAppURL "https://beaconapp.cc/"
#define MyAppExeName "Beacon.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{E58BA263-A23C-484E-99DF-319D5BD1399F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputBaseFilename=Install {#MyAppName}
Compression=lzma
SolidCompression=yes
MinVersion=6.1.7601
ChangesAssociations=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\..\Project\Builds - Beacon.xojo_project\Windows\Beacon\Beacon.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\Project\Builds - Beacon.xojo_project\Windows\Beacon\Beacon Libs\*"; DestDir: "{app}\Libs"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\..\Project\Builds - Beacon.xojo_project\Windows\Beacon\Beacon Resources\*"; DestDir: "{app}\Resources"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\..\Project\Builds - Beacon.xojo_project\OS X 64 bit\Beacon.app\Contents\Resources\Classes.json"; DestDir: "{app}\Resources"; Flags: ignoreversion
Source: "..\..\Artwork\BeaconDocument.ico"; DestDir: "{app}\Resources"; Flags: ignoreversion
Source: "..\..\Artwork\BeaconIdentity.ico"; DestDir: "{app}\Resources"; Flags: ignoreversion
Source: "..\..\Artwork\BeaconPreset.ico"; DestDir: "{app}\Resources"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Registry]
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\WinHttp"; ValueType: dword; ValueName: "DefaultSecureProtocols"; ValueData: 2560; Flags: createvalueifdoesntexist; OnlyBelowVersion: 6.3
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Internet Settings\WinHttp"; ValueType: dword; ValueName: "DefaultSecureProtocols"; ValueData: 2560; Flags: createvalueifdoesntexist; Check: IsWin64; OnlyBelowVersion: 6.3

Root: HKCR; Subkey: ".beacon"; ValueData: "BeaconDocument"; Flags: uninsdeletevalue; ValueType: string; ValueName: ""
Root: HKCR; Subkey: "BeaconDocument"; ValueData: "{#MyAppName} Document"; Flags: uninsdeletekey; ValueType: string; ValueName: ""
Root: HKCR; Subkey: "BeaconDocument\DefaultIcon"; ValueData: "{app}\Resources\BeaconDocument.ico,0"; ValueType: string; ValueName: ""
Root: HKCR; Subkey: "BeaconDocument\shell\open\command"; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; ValueType: string; ValueName: ""

Root: HKCR; Subkey: ".beaconidentity"; ValueData: "BeaconIdentity"; Flags: uninsdeletevalue; ValueType: string; ValueName: ""
Root: HKCR; Subkey: "BeaconIdentity"; ValueData: "{#MyAppName} Identity"; Flags: uninsdeletekey; ValueType: string; ValueName: ""
Root: HKCR; Subkey: "BeaconIdentity\DefaultIcon"; ValueData: "{app}\Resources\BeaconIdentity.ico,0"; ValueType: string; ValueName: ""
Root: HKCR; Subkey: "BeaconIdentity\shell\open\command"; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; ValueType: string; ValueName: ""

Root: HKCR; Subkey: ".beaconpreset"; ValueData: "BeaconPreset"; Flags: uninsdeletevalue; ValueType: string; ValueName: ""
Root: HKCR; Subkey: "BeaconPreset"; ValueData: "{#MyAppName} Preset"; Flags: uninsdeletekey; ValueType: string; ValueName: ""
Root: HKCR; Subkey: "BeaconPreset\DefaultIcon"; ValueData: "{app}\Resources\BeaconPreset.ico,0"; ValueType: string; ValueName: ""
Root: HKCR; Subkey: "BeaconPreset\shell\open\command"; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; ValueType: string; ValueName: ""

Root: HKCR; Subkey: "beacon"; ValueType: "string"; ValueData: "URL:Beacon"; Flags: uninsdeletekey
Root: HKCR; Subkey: "beacon"; ValueType: "string"; ValueName: "URL Protocol"; ValueData: ""
Root: HKCR; Subkey: "beacon\DefaultIcon"; ValueType: "string"; ValueData: "{app}\{#MyAppExeName},0"
Root: HKCR; Subkey: "beacon\shell\open\command"; ValueType: "string"; ValueData: """{app}\{#MyAppExeName}"" ""%1"""

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
