set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.ClientServer\Luban.ClientServer.exe
set CONF_ROOT=%WORKSPACE%\DataTables


%GEN_CLIENT% -j cfg --^
 -d %CONF_ROOT%\Defines\__root__.xml ^
 --input_data_dir %CONF_ROOT%\Datas ^
 --output_data_dir json_custom_include_exclude ^
 --gen_types data_json ^
 --output:tables test.TbTestRef,test.TbTestBeRef,test.TbTestMap ^
 --output:include_tables test.TbTestSize,test.TbTestSet ^
 --output:exclude_tables test.TbTestMap ^
 -s all


pause