set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.ClientServer\Luban.ClientServer.exe
set CONF_ROOT=%WORKSPACE%\DataTables


%GEN_CLIENT% -j cfg --^
 -d %CONF_ROOT%\Defines\__root__.xml ^
 --input_data_dir %CONF_ROOT%\Datas ^
 --output_data_dir bidx ^
 --gen_types data_bidx ^
 -s all


pause