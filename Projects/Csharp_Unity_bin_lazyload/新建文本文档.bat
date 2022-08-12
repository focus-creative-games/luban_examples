set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.ClientServer\Luban.ClientServer.exe
set CONF_ROOT=%WORKSPACE%\DesignerConfigs
D:\Github\luban_fork\src\Luban.Client\bin\Debug\net6.0\Luban.Client.exe -h 127.0.0.1 -j cfg --^
 -d %CONF_ROOT%\Defines\__root__.xml ^
 --input_data_dir %CONF_ROOT%\Datas ^
 --output_code_dir Assets/Gen ^
 --output_data_dir ..\GenerateDatas\bidx ^
 --gen_types code_cs_unity_bin,data_bidx ^
 -s all 