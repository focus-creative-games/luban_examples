set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.Client\Luban.Client.exe
set PROTO_ROOT=%WORKSPACE%\ProtoDefines


%GEN_CLIENT% -h 127.0.0.1 -j proto --^
 -d %PROTO_ROOT%\__root__.xml ^
 --output_code_dir src/main/gen/proto ^
 --gen_type java ^
 -s all 

pause