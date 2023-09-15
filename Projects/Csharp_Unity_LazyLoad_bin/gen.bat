set WORKSPACE=..\..

set LUBAN_DLL=%WORKSPACE%\Tools\Luban\Luban.dll
set CONF_ROOT=%WORKSPACE%\DataTables

dotnet %LUBAN_DLL% ^
    -t client ^
    -c cs-lazyload-bin ^
    -d bin bin-offsetlength  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputCodeDir=Unity/Assets/Gen ^
    -x bin.outputDataDir=Unity/Assets/StreamingAssets/Config/bin ^
    -x bin-offsetlength.outputDataDir=Unity/Assets/StreamingAssets/Config/offset ^
    -x pathValidator.rootDir=%WORKSPACE%\Projects\Csharp_Unity_bin ^
    -x l10n.textProviderFile=*@%WORKSPACE%\DataTables\Datas\l10n\texts.json

pause