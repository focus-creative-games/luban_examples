set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban.Client\Luban.Client.exe
set CONF_ROOT=%WORKSPACE%\DesignerConfigs


%GEN_CLIENT% -h %LUBAN_SERVER_IP% -j cfg --^
 -d %CONF_ROOT%\Defines\__root__.xml ^
 --input_data_dir %CONF_ROOT%\Datas ^
 --output_code_dir Gen ^
 --output_data_dir config_data ^
 --gen_types data_lua ^
 -s all  ^
--input_l10n_text_files l10n/cn/TextTable_CN.xlsx ^
--l10n_text_field_name text_en ^
--output_l10n_not_translated_text_file NotLocalized_CN.txt

pause