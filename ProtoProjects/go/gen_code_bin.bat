set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.ClientServer\Luban.ClientServer.exe
set PROTO_ROOT=%WORKSPACE%\ProtoDefines


%GEN_CLIENT% -j proto --^
 -d %PROTO_ROOT%\__root__.xml ^
 --output_code_dir gen/src/proto ^
 --gen_type go ^
 -s all 

pause