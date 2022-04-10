set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.Client\Luban.Client.exe
set CONF_ROOT=%WORKSPACE%\DesignerConfigs


%GEN_CLIENT% -h %LUBAN_SERVER_IP% -j cfg --^
 -d %CONF_ROOT%\Defines\__root__.xml ^
 --input_data_dir %CONF_ROOT%\Datas ^
 --output_code_dir gen/cfg ^
 --output_data_dir ..\GenerateDatas\bin ^
 --gen_types code_go_bin,data_bin ^
 --go:bright_module_name "luban_examples/go_bin/bright" ^
 -s all 

pause