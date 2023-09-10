set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DataTables

dotnet %GEN_CLIENT% ^
    -t server ^
    -c cs-dotnet-json ^
    -d json  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputCodeDir=Gen ^
    -x outputDataDir=..\GenerateDatas\json ^
    -x pathValidator.rootDir=D:\workspace2\luban_examples\Projects\Csharp_Unity_bin ^
    -x l10n.textProviderFile=*@D:\workspace2\luban_examples\DataTables\Datas\l10n\texts.json

pause