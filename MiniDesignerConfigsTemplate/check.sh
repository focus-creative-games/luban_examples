#!/bin/zsh
GEN_CLIENT=../Tools/Luban.ClientServer/Luban.ClientServer.dll

dotnet ${GEN_CLIENT} -j cfg --\
 -d Defines/__root__.xml \
 --input_data_dir Datas \
 --output_data_dir output_json \
 --gen_types data_json \
 -s all 
