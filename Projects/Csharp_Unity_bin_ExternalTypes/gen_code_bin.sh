#!/bin/zsh
WORKSPACE=../..

GEN_CLIENT=${WORKSPACE}/Tools/Luban.Client/Luban.Client.dll
CONF_ROOT=${WORKSPACE}/DesignerConfigs


dotnet ${GEN_CLIENT} -h 127.0.0.1 -j cfg --\
 -d ${CONF_ROOT}/Defines/__root__.xml \
 --input_data_dir ${CONF_ROOT}/Datas \
 --output_code_dir Assets/Gen \
 --output_data_dir ../GenerateDatas/bytes \
 --gen_types code_cs_bin,data_bin \
 --data_file_extension bytes \
 --external:selectors unity_cs \
 -s all 
