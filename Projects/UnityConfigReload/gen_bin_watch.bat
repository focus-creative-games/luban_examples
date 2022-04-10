set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.ClientServer\Luban.ClientServer.exe
set CONF_ROOT=%WORKSPACE%\DesignerConfigs


%GEN_CLIENT%  -j cfg -w %CONF_ROOT%\Datas --^
 -d %CONF_ROOT%\Defines\__root__.xml ^
 --input_data_dir %CONF_ROOT%\Datas ^
 --output_data_dir Assets/Gen/Data ^
 --gen_types data_bin ^
 --cs:use_unity_vector ^
 -s all 