set WORKSPACE=..
set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=.

dotnet %LUBAN_DLL% ^
    -t all ^
    -d json ^
    --schemaPath %CONF_ROOT%\Defines\__root__.xml ^
    -x inputDataDir=%CONF_ROOT%\Datas  ^
    -x outputDataDir=output

pause