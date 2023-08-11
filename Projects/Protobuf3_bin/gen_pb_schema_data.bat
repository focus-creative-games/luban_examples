set WORKSPACE=..\..

set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DesignerConfigs

dotnet %LUBAN_DLL% ^
    -t all ^
    -c protobuf3 ^
    -d protobuf-bin  ^
    --schemaPath %CONF_ROOT%\Defines\__root__.xml ^
    -x inputDataDir=%CONF_ROOT%\Datas ^
    -x outputCodeDir=pb_schemas ^
    -x outputDataDir=pb_datas ^
    -x pathValidator.rootDir=%WORKSPACE%\Projects\Csharp_Unity_bin ^
    -x l10n.textProviderFile=*@%WORKSPACE%\DesignerConfigs\Datas\l10n\texts.json

pause