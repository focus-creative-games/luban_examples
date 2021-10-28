set BIN=%CD%/Excel2TextDiff
cd /d D:\workspace\Excel2TextDiff
call dotnet build -c release -o %BIN%

pause