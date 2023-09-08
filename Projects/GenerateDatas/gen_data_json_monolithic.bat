set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.ClientServer\Luban.ClientServer.exe
set CONF_ROOT=%WORKSPACE%\DataTables


%GEN_CLIENT% -j cfg --^
 -d %CONF_ROOT%\Defines\__root__.xml ^
 --input_data_dir %CONF_ROOT%\Datas ^
 --gen_types data_json_monolithic ^
 --output_data_dir json_monolithic ^
 --output:data:json_monolithic_file json_monolithic/all.json ^
 -s all


pause