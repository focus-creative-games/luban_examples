set WORKSPACE=..\..

set LUBAN_DLL=D:\Projects\luban_fork\src\Luban\bin\Debug\net8.0\Luban.dll
set CONF_ROOT=%WORKSPACE%\DataTables

dotnet %LUBAN_DLL% ^
    -t editor ^
    -c cs-editor-json ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputCodeDir=Assets/Gen ^
    -x pathValidator.rootDir=%WORKSPACE%\Projects\Csharp_Unity_bin ^
    -x l10n.provider=default ^
    -x l10n.textFile.path=*@%WORKSPACE%\DataTables\Datas\l10n\texts.json ^
    -x l10n.textFile.keyFieldName=key

pause