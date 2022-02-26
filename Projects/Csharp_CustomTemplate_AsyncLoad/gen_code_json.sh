#!/bin/zsh
WORKSPACE=../..

GEN_CLIENT=${WORKSPACE}/Tools/Luban.Client/Luban.Client.dll
CONF_ROOT=${WORKSPACE}/DesignerConfigs

dotnet ${GEN_CLIENT} -h 127.0.0.1 -j cfg --\
 -d ${CONF_ROOT}/Defines/__root__.xml \
 --input_data_dir ${CONF_ROOT}/Datas \
 --output_code_dir Gen \
 --output_data_dir config_data \
 --gen_types code_cs_unity_json,data_json \
 -s all 
