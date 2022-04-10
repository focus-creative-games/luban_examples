set GEN_CLIENT=..\Tools\Luban.Client\Luban.Client.exe

set DEFINE_FILE=Defines\__root__.xml

%GEN_CLIENT% -h %LUBAN_SERVER_IP% -j cfg --^
 -d %DEFINE_FILE%^
 --input_data_dir Datas ^
 --output_data_dir data_bin ^
 --gen_types data_bin ^
 -s all 
pause