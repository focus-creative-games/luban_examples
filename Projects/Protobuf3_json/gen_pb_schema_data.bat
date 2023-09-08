set WORKSPACE=..\..

set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DataTables

dotnet %LUBAN_DLL% ^
    -t all ^
    -c protobuf3 ^
    -d protobuf-json  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputCodeDir=pb_schemas ^
    -x outputDataDir=pb_datas ^
    -x pathValidator.rootDir=%WORKSPACE%\Projects\Csharp_Unity_bin ^
    -x l10n.textProviderFile=*@%WORKSPACE%\DataTables\Datas\l10n\texts.json

pause