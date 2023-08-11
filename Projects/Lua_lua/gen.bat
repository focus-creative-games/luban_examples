set WORKSPACE=..\..

set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DesignerConfigs

dotnet %LUBAN_DLL% ^
    -t all ^
    -c lua-lua ^
    -d lua  ^
    --schemaPath %CONF_ROOT%\Defines\__root__.xml ^
    -x inputDataDir=%CONF_ROOT%\Datas ^
    -x outputCodeDir=Gen ^
    -x outputDataDir=..\GenerateDatas\lua ^
    -x pathValidator.rootDir=%WORKSPACE%\Projects\Csharp_Unity_bin ^
    -x l10n.textProviderFile=*@%WORKSPACE%\DesignerConfigs\Datas\l10n\texts.json


pause