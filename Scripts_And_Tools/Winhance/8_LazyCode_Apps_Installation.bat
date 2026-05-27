@echo off
powershell -NoProfile -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
set PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

@REM choco install arduino -y --ignore-checksums --source chocolatey --limit-output
@REM choco install audacity -y --ignore-checksums --source chocolatey --limit-output
@REM choco install autodesk-fusion360 -y --ignore-checksums --source chocolatey --limit-output
@REM choco install beyondcompare -y --ignore-checksums --source chocolatey --limit-output
@REM choco install bleachbit -y --ignore-checksums --source chocolatey --limit-output
@REM choco install bulk-crap-uninstaller -y --ignore-checksums --source chocolatey --limit-output
@REM choco install bulkrenameutility -y --ignore-checksums --source chocolatey --limit-output
@REM choco install caesium.install -y --ignore-checksums --source chocolatey --limit-output
@REM choco install choco-cleaner -y --ignore-checksums --source chocolatey --limit-output
@REM choco install googlechrome -y --ignore-checksums --source chocolatey --limit-output
@REM choco install cpu-z -y --ignore-checksums --source chocolatey --limit-output
@REM choco install directorymonitor -y --ignore-checksums --source chocolatey --limit-output
@REM choco install dotnet -y --ignore-checksums --source chocolatey --limit-output
@REM choco install epicgameslauncher -y --ignore-checksums --source chocolatey --limit-output
@REM choco install everything -y --ignore-checksums --source chocolatey --limit-output
choco install ffmpeg -y --ignore-checksums --source chocolatey --limit-output
@REM choco install filezilla -y --ignore-checksums --source chocolatey --limit-output
@REM choco install firefox -y --ignore-checksums --source chocolatey --limit-output
@REM choco install git -y --ignore-checksums --source chocolatey --limit-output
@REM choco install github-desktop -y --ignore-checksums --source chocolatey --limit-output
@REM choco install gpu-z -y --ignore-checksums --source chocolatey --limit-output
@REM choco install handbrake -y --ignore-checksums --source chocolatey --limit-output
@REM choco install hwinfo -y --ignore-checksums --source chocolatey --limit-output
@REM choco install hwmonitor -y --ignore-checksums --source chocolatey --limit-output
@REM choco install imgburn -y --ignore-checksums --source chocolatey --limit-output
@REM choco install krita -y --ignore-checksums --source chocolatey --limit-output
@REM choco install lightshot -y --ignore-checksums --source chocolatey --limit-output
@REM choco install localsend -y --ignore-checksums --source chocolatey --limit-output
@REM choco install lockhunter -y --ignore-checksums --source chocolatey --limit-output
@REM choco install mediainfo -y --ignore-checksums --source chocolatey --limit-output
@REM choco install mkvtoolnix -y --ignore-checksums --source chocolatey --limit-output
@REM choco install nodejs -y --ignore-checksums --source chocolatey --limit-output
@REM choco install notion -y --ignore-checksums --source chocolatey --limit-output
@REM choco install obs-studio -y --ignore-checksums --source chocolatey --limit-output
@REM choco install oh-my-posh -y --ignore-checksums --source chocolatey --limit-output
@REM choco install onedrive -y --ignore-checksums --source chocolatey --limit-output
choco install openjdk -y --ignore-checksums --source chocolatey --limit-output
@REM choco install origin -y --ignore-checksums --source chocolatey --limit-output
choco install parsec -y --ignore-checksums --source chocolatey --limit-output
@REM choco install powershell-core -y --ignore-checksums --source chocolatey --limit-output
@REM choco install powertoys -y --ignore-checksums --source chocolatey --limit-output
@REM choco install python -y --ignore-checksums --source chocolatey --limit-output
@REM choco install qbittorrent -y --ignore-checksums --source chocolatey --limit-output
choco install rclone -y --ignore-checksums --source chocolatey --limit-output
@REM choco install rufus -y --ignore-checksums --source chocolatey --limit-output
@REM choco install sagethumbs -y --ignore-checksums --source chocolatey --limit-output
@REM choco install steam -y --ignore-checksums --source chocolatey --limit-output
@REM choco install telegram -y --ignore-checksums --source chocolatey --limit-output
@REM choco install treesizefree -y --ignore-checksums --source chocolatey --limit-output
choco install vcredist-all -y --ignore-checksums --source chocolatey --limit-output
@REM choco install vscode -y --ignore-checksums --source chocolatey --limit-output
choco install windhawk -y --ignore-checksums --source chocolatey --limit-output
choco install wingetui -y --ignore-checksums --source chocolatey --limit-output
choco install caffeine -y --ignore-checksums --source chocolatey --limit-output

pause
@echo Press Any Key To Continue