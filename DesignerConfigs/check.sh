#!/bin/zsh
WORKSPACE=..
GEN_CLIENT=${WORKSPACE}/Tools/Luban.Client/Luban.Client.dll

CONF_ROOT=${WORKSPACE}/DesignerConfigs

DEFINE_FILE=${CONF_ROOT}/Defines/__root__.xml

dotnet ${GEN_CLIENT} -h 127.0.0.1 -j cfg --\
 -d ${DEFINE_FILE} \
 --input_data_dir ${CONF_ROOT}/Datas \
 --output_data_dir CfgValidator/config_data \
 --gen_types data_bin \
 -s all \
 --export_test_data