# Clean Accessibility Removal Script
# Run as Administrator

Write-Host "Removing Accessibility features..." -ForegroundColor Yellow

# Delete executables
$files = "C:\Windows\System32\Magnify.exe", "C:\Windows\System32\Narrator.exe", "C:\Windows\System32\osk.exe", "C:\Windows\System32\LiveCaptions.exe"
foreach ($f in $files) {
    if (Test-Path $f) {
        takeown /F $f 2>$null
        icacls $f /grant "Administrators:F" 2>$null
        Remove-Item $f -Force
        Write-Host "Deleted: $f" -ForegroundColor Green
    }
}

# Hide Settings pages
$regPath = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer"
if (!(Test-Path $regPath)) { New-Item $regPath -Force | Out-Null }
$hide = "ms-settings:easeofaccess-magnifier;ms-settings:easeofaccess-narrator;ms-settings:easeofaccess-keyboard;ms-settings:live-captions;ms-settings:voice-access"
Set-ItemProperty -Path $regPath -Name "SettingsPageVisibility" -Value "hide:$hide" -Force
Write-Host "Settings pages hidden" -ForegroundColor Green

# Delete Start Menu folders
$folders = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Accessibility", "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\Accessibility"
foreach ($folder in $folders) {
    if (Test-Path $folder) {
        Remove-Item $folder -Recurse -Force
        Write-Host "Deleted: $folder" -ForegroundColor Green
    }
}

Write-Host "Done! Sign out and back in." -ForegroundColor Green