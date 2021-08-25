set WORKSPACE=..\..
set GEN_CLIENT=%WORKSPACE%\Tools\Luban.ClientServer\Luban.ClientServer.exe
set CONF_ROOT=%WORKSPACE%\DesignerConfigs
set DEFINE_FILE=%CONF_ROOT%\Defines\__root__.xml

%GEN_CLIENT% -j cfg --^
 -d %DEFINE_FILE%^
 --input_data_dir %CONF_ROOT%\Datas ^
 --output_data_dir json ^
 --gen_types data_json ^
 -s all ^
--export_test_data

pause