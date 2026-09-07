@echo off
setlocal

cd /d "%~dp0"

echo Building Luban...
rd /s /q Luban 2>nul
dotnet build ../../luban/src/Luban/Luban.csproj -c Release -o Luban
if errorlevel 1 goto :fail

echo Building Luban.Agent...
rd /s /q Luban.Agent 2>nul
dotnet build ../../luban/src/Luban.Agent/Luban.Agent.csproj -c Release -o Luban.Agent
if errorlevel 1 goto :fail

echo Building Luban.Mcp...
rd /s /q Luban.Mcp 2>nul
dotnet build ../../luban/src/Luban.Mcp/Luban.Mcp.csproj -c Release -o Luban.Mcp
if errorlevel 1 goto :fail

echo.
echo Done. Outputs:
echo   %cd%\Luban
echo   %cd%\Luban.Agent
echo   %cd%\Luban.Mcp
pause
exit /b 0

:fail
echo Build failed.
pause
exit /b 1
