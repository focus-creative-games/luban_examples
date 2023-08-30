set WORKSPACE=..\..

set GEN_CLIENT=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DesignerConfigs

dotnet %GEN_CLIENT% ^
    -t all ^
    -c cs-simple-json ^
    -d json  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputCodeDir=Assets/Gen ^
    -x outputDataDir=..\GenerateDatas\json ^
    -x pathValidator.rootDir=D:\workspace2\luban_examples\Projects\Csharp_Unity_bin ^
    -x l10n.textProviderFile=*@D:\workspace2\luban_examples\DesignerConfigs\Datas\l10n\texts.json

pause