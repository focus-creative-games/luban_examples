#!/bin/zsh
WORKSPACE=../..
GEN_CLIENT=${WORKSPACE}/Tools/Luban.ClientServer/Luban.ClientServer.dll
CONF_ROOT=${WORKSPACE}/DesignerConfigs

dotnet ${GEN_CLIENT} -j cfg --\
 -d ${CONF_ROOT}/Defines/__root__.xml \
 --input_data_dir ${CONF_ROOT}/Datas \
 --output_code_dir Gen \
 --output_data_dir ..\GenerateDatas\json \
 --gen_types code_cs_dotnet_json,data_json \
 -s all 
