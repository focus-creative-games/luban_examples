set WORKSPACE=..\..

set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DataTables


dotnet %LUBAN_DLL% ^
    -t all ^
    -d json  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputDataDir=json ^
    -x compact=1


pause