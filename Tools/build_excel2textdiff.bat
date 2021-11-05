set APP=Excel2TextDiff
rd /s /q %APP%
set BIN=%CD%/%APP%
cd /d D:\workspace\RarelyUse\%APP%
call dotnet build -c release -o %BIN%

pause