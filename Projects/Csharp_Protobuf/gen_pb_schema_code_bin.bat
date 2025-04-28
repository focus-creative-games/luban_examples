set WORKSPACE=..\..

set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DataTables

dotnet %LUBAN_DLL% ^
    -t all ^
    -c cs-protobuf3 ^
    -c protobuf3 ^
    -d protobuf3-bin  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x cs-protobuf3.outputCodeDir=Gen ^
    -x protobuf3.outputCodeDir=pb_schemas ^
    -x outputDataDir=pb_datas ^
    -x pathValidator.rootDir=%WORKSPACE%\Projects\Csharp_Unity_bin ^
    -x l10n.provider=default ^
    -x l10n.textFile.path=*@%WORKSPACE%\DataTables\Datas\l10n\texts.json ^
    -x l10n.textFile.keyFieldName=key

pause