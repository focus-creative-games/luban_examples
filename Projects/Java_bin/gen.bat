set WORKSPACE=..\..

set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DataTables

dotnet %LUBAN_DLL% ^
    -t all ^
    -c java-bin ^
    -d bin  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputCodeDir=src/main/gen/cfg ^
    -x outputDataDir=..\GenerateDatas\bytes ^
    -x pathValidator.rootDir=%WORKSPACE%\Projects\Csharp_Unity_bin ^
    -x l10n.textProviderFile=*@%WORKSPACE%\DataTables\Datas\l10n\texts.json

pause