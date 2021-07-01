; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "TinypngͼƬ����ѹ��"
#define MyAppVerName "ͼƬѹ�� 1.0"
#define MyAppPublisher "Yong++"
#define MyAppURL "http://www.yzrshop.com/"
#define MyAppExeName "main.exe"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
AppId={{8820D067-FAF5-4EFE-81E3-D1D0842CDD67}
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\ͼƬ����ѹ��
DefaultGroupName={#MyAppName}
OutputDir=C:\Users\yongp\Desktop\qt
OutputBaseFilename=tinypngͼƬѹ��
SetupIconFile=D:\workspace\go\src\heyong\ecommerce\test\heyong\qt\icon.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\workspace\go\src\heyong\ecommerce\test\heyong\qt\deploy\windows\main.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\workspace\go\src\heyong\ecommerce\test\heyong\qt\deploy\windows\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\workspace\go\src\heyong\ecommerce\test\heyong\qt\deploy\windows\Qt5Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\workspace\go\src\heyong\ecommerce\test\heyong\qt\deploy\windows\Qt5Gui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\workspace\go\src\heyong\ecommerce\test\heyong\qt\deploy\windows\Qt5Network.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\workspace\go\src\heyong\ecommerce\test\heyong\qt\deploy\windows\Qt5Quick.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\workspace\go\src\heyong\ecommerce\test\heyong\qt\deploy\windows\Qt5Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#MyAppName}}"; Flags: nowait postinstall skipifsilent

[Code]
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
if CurUninstallStep = usUninstall then
  RegDeleteKeyIncludingSubkeys(HKEY_CURRENT_USER, 'Software\com.jky.achun')
end;




