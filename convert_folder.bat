@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"
if not exist converted mkdir converted
for %%f in (*.mp3) do (
    echo Converting "%%f" ...
    ffmpeg -i "%%f" -ar 24000 -ac 1 -b:a 80k "converted\%%~nf_converted.mp3"
)
echo Conversion complete!
pause
