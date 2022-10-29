set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.ClientServer\Luban.ClientServer.exe
set CONF_ROOT=%WORKSPACE%\DesignerConfigs


%GEN_CLIENT% -j cfg --^
 -d %CONF_ROOT%\Defines\__root__.xml ^
 --input_data_dir %CONF_ROOT%\Datas ^
 --output_code_dir gen/cfg ^
 --output_data_dir ..\GenerateDatas\json ^
 --gen_types code_go_json,data_json ^
 --go:bright_module_name "luban_examples/go_json/bright" ^
 -s all 

pause