set WORKSPACE=..\..
set GEN_CLIENT=%WORKSPACE%\Tools\Luban.Client\Luban.Client.exe
set CONF_ROOT=%WORKSPACE%\DesignerConfigs
set DEFINE_FILE=%CONF_ROOT%\Defines\__root__.xml

%GEN_CLIENT% -h %LUBAN_SERVER_IP% -j cfg --^
 -d %DEFINE_FILE%^
 --input_data_dir %CONF_ROOT%\Datas ^
 --output_code_dir TsScripts/src/Gen/Cfg ^
 --output_data_dir ..\GenerateDatas\json ^
 --gen_types code_typescript_json,data_json ^
 -s all ^
--export_test_data ^
--use_puerts_bytebuf ^
--embed_bright_types 

pause