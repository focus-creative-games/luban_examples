set WORKSPACE=..\..

set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DataTables


dotnet %LUBAN_DLL% ^
    -t all ^
    -d bin  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputDataDir=bytes


pause