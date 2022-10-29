set GEN_CLIENT=..\Tools\Luban.ClientServer\Luban.ClientServer.exe

set DEFINE_FILE=Defines\__root__.xml

%GEN_CLIENT% -j cfg --^
 -d %DEFINE_FILE%^
 --input_data_dir Datas ^
 --output_data_dir data_lua ^
 --gen_types data_lua ^
 -s all
pause