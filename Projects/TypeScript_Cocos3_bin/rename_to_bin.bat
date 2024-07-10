@echo off
setlocal enabledelayedexpansion

set "directory=assets\resources"

cd /d "%directory%"

for %%f in (*.bytes) do (
    set "filename=%%~nf"
    ren "%%f" "!filename!.bin"
)

echo All .bytes files have been renamed to .bin files.
pause