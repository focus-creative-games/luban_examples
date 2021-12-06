set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.Client\Luban.Client.exe
set CONF_ROOT=%WORKSPACE%\DesignerConfigs


%GEN_CLIENT% -h %LUBAN_SERVER_IP% -j cfg --^
 -d %CONF_ROOT%\Defines\__root__.xml ^
 --input_data_dir %CONF_ROOT%\Datas ^
 --output_code_dir schemas ^
 --output_data_dir datas ^
 --gen_types code_flatbuffers,data_flatbuffers_json ^
 -s all 
 
call schemas/convert_json_to_binary.bat flatc schemas/schema.fbs datas datas_bin

pause