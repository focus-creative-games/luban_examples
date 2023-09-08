set WORKSPACE=..\..

set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DataTables

dotnet %LUBAN_DLL% ^
    -t all ^
    -c cs-dotnet-json ^
    -d json  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputCodeDir=Gen ^
    -x outputDataDir=..\GenerateDatas\json ^
    -x pathValidator.rootDir=%WORKSPACE%\Projects\Csharp_Unity_bin ^
    -x l10n.textProviderFile=*@%WORKSPACE%\DataTables\Datas\l10n\texts.json


dotnet test -v m
pause