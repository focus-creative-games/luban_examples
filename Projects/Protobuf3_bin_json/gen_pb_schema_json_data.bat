set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.ClientServer\Luban.ClientServer.exe
set CONF_ROOT=%WORKSPACE%\DesignerConfigs


%GEN_CLIENT% -j cfg --^
 -d %CONF_ROOT%\Defines\__root__.xml ^
 --input_data_dir %CONF_ROOT%\Datas ^
 --output_code_dir pb_schemas ^
 --output_data_dir pb_json ^
 --gen_types code_protobuf3,data_protobuf_json ^
 --output:code:monolithic_file config.proto ^
 -s all 

pause