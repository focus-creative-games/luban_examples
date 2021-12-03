#!/bin/bash

GEN_CLIENT=../../Tools/Luban.ClientServer/Luban.ClientServer.dll

dotnet ${GEN_CLIENT} --template_search_path CustomTemplate -j cfg -- \
	-d ../../DesignerConfigs/Defines/__root__.xml \
	--input_data_dir ../../DesignerConfigs/Datas \
	--output_code_dir ./Assets/Scripts/Configs/Gen \
	--output_data_dir ./Assets/Res/Configs \
	--gen_types code_cs_json,data_json \
	-s all
