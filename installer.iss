[Setup]
AppId={{A1B2C3D4-E5F6-7890-ABCD-EF1234567890}
AppName=PPT图片替换工具
AppVersion=1.0.0
AppPublisher=Leslie
AppPublisherURL=https://github.com/Leslie0Han/ppt-image-replacer
AppSupportURL=https://github.com/Leslie0Han/ppt-image-replacer/issues
DefaultDirName={autopf}\PPT图片替换工具
DefaultGroupName=PPT图片替换工具
LicenseFile=LICENSE
OutputDir=installer_output
OutputBaseFilename=PPT图片替换工具_安装程序
SetupIconFile=
Compression=lzma2
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "chinesesimplified"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "dist\PPT图片替换工具.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "README.md"; DestDir: "{app}"; Flags: ignoreversion isreadme
Source: "LICENSE"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\PPT图片替换工具"; Filename: "{app}\PPT图片替换工具.exe"
Name: "{group}\{cm:UninstallProgram,PPT图片替换工具}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\PPT图片替换工具"; Filename: "{app}\PPT图片替换工具.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\PPT图片替换工具.exe"; Description: "{cm:LaunchProgram,PPT图片替换工具}"; Flags: nowait postinstall skipifsilent
