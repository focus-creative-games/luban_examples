set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.ClientServer\Luban.Client.exe
set CONF_ROOT=%WORKSPACE%\DesignerConfigs


%GEN_CLIENT% -h 127.0.0.1 -j cfg --^
 -d %CONF_ROOT%\Defines\__root__.xml ^
 --input_data_dir %CONF_ROOT%\Datas ^
 --output_code_dir src/main/gen/cfg ^
 --output_data_dir ..\GenerateDatas\bytes ^
 --gen_types code_java_bin,data_bin ^
 -s all 

pause