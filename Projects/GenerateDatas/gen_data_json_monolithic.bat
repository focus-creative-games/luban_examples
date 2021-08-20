set WORKSPACE=..\..
set GEN_CLIENT=%WORKSPACE%\Tools\Luban.Client\Luban.Client.exe
set CONF_ROOT=%WORKSPACE%\DesignerConfigs
set DEFINE_FILE=%CONF_ROOT%\Defines\__root__.xml

%GEN_CLIENT% -h %LUBAN_SERVER_IP% -j cfg --^
 -d %DEFINE_FILE%^
 --input_data_dir %CONF_ROOT%\Datas ^
 --gen_types data_json_monolithic ^
 --output_data_dir json_monolithic ^
 --output_data_json_monolithic_file json_monolithic/all.json ^
 -s all ^
--export_test_data

pause