set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.ClientServer\Luban.ClientServer.exe
set CONF_ROOT=%WORKSPACE%\DataTables


set WORKSPACE=..\..

set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DataTables


dotnet %LUBAN_DLL% ^
    -t all ^
    -d json2  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputDataDir=json2


pause