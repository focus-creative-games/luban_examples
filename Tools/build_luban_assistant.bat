set BIN=%CD%/LubanAssistant
cd /d D:\workspace\luban\src\LubanAssistant
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MsBuild.exe" LubanAssistant.csproj /p:OutputPath=%BIN% /property:Configuration=Release

pause