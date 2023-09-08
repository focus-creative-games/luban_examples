set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.ClientServer\Luban.ClientServer.exe
set CONF_ROOT=%WORKSPACE%\DataTables


%GEN_CLIENT% -h %LUBAN_SERVER_IP% -j cfg --^
 -d %CONF_ROOT%\Defines\__root__.xml ^
 --input_data_dir %CONF_ROOT%\Datas ^
 --output_data_dir json ^
 --gen_types data_json ^
 -s all


pause