set WORKSPACE=..\..

set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DataTables

dotnet %LUBAN_DLL% ^
    -t all ^
    -c dart-protobuf3 ^
    -d protobuf3-bin  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputCodeDir=Dart_json\lib\gen ^
    -x outputDataDir=Dart_json\json 

pause