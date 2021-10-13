set BIN=%CD%/Excel2TextDiff
cd /d D:\workspace\luban\src\Excel2TextDiff
call dotnet build -c release -o %BIN%

pause