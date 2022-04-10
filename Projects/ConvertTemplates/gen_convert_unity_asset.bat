set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.ClientServer\Luban.ClientServer.exe
set CONF_ROOT=%WORKSPACE%\DesignerConfigs


%GEN_CLIENT% -t CustomTemplates -j cfg --^
 -d %CONF_ROOT%\Defines\__root__.xml ^
 --input_data_dir %CONF_ROOT%\Datas ^
 --output_data_dir unity_asset ^
 --gen_types convert_template ^
 --template:convert:file unity_asset ^
 --output:convert:file_extension asset ^
 --output:tables test.TbTestScriptableObject ^
 -s all


pause