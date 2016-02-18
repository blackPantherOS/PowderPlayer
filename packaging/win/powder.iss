; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Powder Player"
#define MyAppVersion "0.97"
#define MyAppPublisher "Branza Victor-Alexandru"
#define MyAppURL "http://powder.media/"
#define MyAppExeName "powder.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{84800E98-0FB3-4450-BEF2-E8479AA4ED23}
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
LicenseFile=..\..\LICENSE
InfoBeforeFile=PowderInstall.txt
InfoAfterFile=PowderAfterInstall.txt
OutputDir=.\
OutputBaseFilename=PowderPlayer_v0.97
SetupIconFile=powder.ico
Compression=lzma
SolidCompression=yes

[Registry]
Root: HKCR; Subkey: "pow"; ValueType: "string"; ValueData: "URL:Custom Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "pow"; ValueType: "string"; ValueName: "URL Protocol"; ValueData: ""
Root: HKCR; Subkey: "pow\DefaultIcon"; ValueType: "string"; ValueData: "{app}\powder.exe,0"
Root: HKCR; Subkey: "pow\shell\open\command"; ValueType: "string"; ValueData: """{app}\powder.exe"" ""%1"""

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[InstallDelete]
Type: files; Name: "{app}\mask.html"
Type: files; Name: "{app}\updater.html"
Type: files; Name: "{app}\index.html"
Type: files; Name: "{app}\engine.js"
Type: files; Name: "{app}\libeay32.dll"
Type: files; Name: "{app}\libvlc.dll"
Type: files; Name: "{app}\libvlc.dll.manifest"
Type: files; Name: "{app}\libvlccore.dll"
Type: files; Name: "{app}\msvcr90.dll"
Type: files; Name: "{app}\npWebChimera.dll"
Type: files; Name: "{app}\ssleay32.dll"
Type: files; Name: "{app}\ffprobe.exe"
Type: filesandordirs; Name: "{app}\node_modules\node-ffprobe"
Type: filesandordirs; Name: "{app}\plugins"
Type: filesandordirs; Name: "{app}\lua"
Type: filesandordirs; Name: "{app}\qml"
Type: filesandordirs; Name: "{app}\images"
Type: filesandordirs; Name: "{app}\player"
Type: filesandordirs; Name: "{app}\resources"
Type: filesandordirs; Name: "{app}\lib"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "E:\Siteuri\PowderPlayer\powder.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Siteuri\PowderPlayer\credits.html"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Siteuri\PowderPlayer\d3dcompiler_47.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Siteuri\PowderPlayer\ffmpegsumo.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Siteuri\PowderPlayer\icon.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Siteuri\PowderPlayer\icudtl.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Siteuri\PowderPlayer\libEGL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Siteuri\PowderPlayer\libGLESv2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Siteuri\PowderPlayer\LICENSE"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Siteuri\PowderPlayer\nw.pak"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Siteuri\PowderPlayer\package.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Siteuri\PowderPlayer\pdf.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Siteuri\PowderPlayer\README.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Siteuri\PowderPlayer\locales\*"; DestDir: "{app}\locales"; Flags: ignoreversion recursesubdirs
Source: "E:\Siteuri\PowderPlayer\node_modules\*"; DestDir: "{app}\node_modules"; Flags: ignoreversion recursesubdirs
Source: "E:\Siteuri\PowderPlayer\src\*"; DestDir: "{app}\src"; Flags: ignoreversion recursesubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

