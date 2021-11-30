#!/bin/zsh
WORKSPACE=../..
GEN_CLIENT=${WORKSPACE}/Tools/Luban.Client/Luban.Client.dll
CONF_ROOT=${WORKSPACE}/DesignerConfigs
DEFINE_FILE=

dotnet ${GEN_CLIENT} -h ${LUBAN_SERVER_IP} -j cfg --\
 -d ${CONF_ROOT}/Defines/__root__.xml \
 --input_data_dir ${CONF_ROOT}/Datas \
 --output_code_dir Assets/Gen \
 --output_data_dir ../GenerateDatas/bin \
 --gen_types code_cs_bin,data_bin \
 --cs:use_unity_vector \
 -s all 


