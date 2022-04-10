set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.Client\Luban.Client.exe
set PROTO_ROOT=%WORKSPACE%\ProtoDefines


%GEN_CLIENT% -h %LUBAN_SERVER_IP% -j proto --^
 -d %PROTO_ROOT%\__root__.xml ^
 --output_code_dir TsScripts/src/Gen/Proto ^
 --gen_type typescript ^
 --typescript:use_puerts_bytebuf ^
 --typescript:embed_bright_types ^
 -s all 

pause