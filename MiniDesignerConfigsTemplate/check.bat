set GEN_CLIENT=dotnet ..\Tools\Luban.ClientServer\Luban.ClientServer.dll

%GEN_CLIENT% -h 127.0.0.1 -j cfg --^
 -d Defines\__root__.xml ^
 --input_data_dir Datas ^
 --output_data_dir output_json ^
 --output_code_dir gen ^
 --gen_types code_cs_unity_json,data_json ^
 -s all
pause