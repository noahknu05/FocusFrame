# Activate conda environment and build executable
conda activate focusframe

# Change to the script directory
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptDir

# Build the executable (removed --uac-admin as PyInstaller no longer recommends it)
pyinstaller --onefile --windowed --icon "logo.ico" --add-data "logo.png;." "FocusFrameApp.py"

Write-Host "Build complete! Executable created in the dist/ folder"
pause
