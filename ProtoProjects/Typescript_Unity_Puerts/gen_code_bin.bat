set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.ClientServer\Luban.ClientServer.exe
set PROTO_ROOT=%WORKSPACE%\ProtoDefines


%GEN_CLIENT% -j proto --^
 -d %PROTO_ROOT%\__root__.xml ^
 --output_code_dir TsScripts/src/Gen/Proto ^
 --gen_type typescript ^
 --typescript:use_puerts_bytebuf ^
 --typescript:embed_bright_types ^
 -s all 

pause