set BIN=%CD%/Luban.ClientServer
cd /d D:\workspace\luban\src\Luban.ClientServer
call dotnet build -c release -o %BIN%

pause