set WORKSPACE=..

set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DesignerConfigs

dotnet %LUBAN_DLL% ^
    -t all ^
    --schemaPath %CONF_ROOT%\Defines\__root__.xml ^
    -x inputDataDir=%CONF_ROOT%\Datas ^
    -x pathValidator.rootDir=%WORKSPACE%\Projects\Csharp_Unity_bin ^
    -x l10n.textProviderFile=*@%WORKSPACE%\DesignerConfigs\Datas\l10n\texts.json ^
    -x forceLoadDatas=1

pause