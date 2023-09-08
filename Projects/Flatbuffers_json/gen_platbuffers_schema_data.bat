set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DataTables

dotnet %GEN_CLIENT% ^
    -t all ^
    -c flatbuffers ^
    -d flatbuffers-json  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputCodeDir=schemas ^
    -x outputDataDir=json ^
    -x pathValidator.rootDir=D:\workspace2\luban_examples\Projects\Csharp_Unity_bin ^
    -x l10n.textProviderFile=*@D:\workspace2\luban_examples\DataTables\Datas\l10n\texts.json

pause