$host.ui.RawUI.WindowTitle = 'Android Debug Bridge Installer by @its_ashu_otf'

Write-Host "`n`nADB Installer by @its_ashu_otf" -ForegroundColor Green
Write-Host "`n`n" -ForegroundColor Green

# Function to test internet connectivity
function Test-InternetConnection {
    try {
        $testConnection = Test-Connection -ComputerName www.google.com -Count 1 -ErrorAction Stop
        return $true
    }
    catch {
        Write-Warning "Internet connection is required but not available. Please check your connection."
        return $false
    }
}

# Check for internet connectivity before proceeding
if (-not (Test-InternetConnection)) {
    break
}

# --- ADB Downloader --- #
function ADB-Downloader {
    try {
            Write-Host "Downloading ADB..."
            $platformToolsUrl = "https://dl.google.com/android/repository/platform-tools-latest-windows.zip"

            $webClient = New-Object System.Net.WebClient
                     $webClient.DownloadFileAsync((New-Object System.Uri("$platformToolsUrl")), ".\platform-tools-latest-windows.zip")

            while ($webClient.IsBusy) {
                Start-Sleep -Seconds 2
                }
                
            Write-Host "Extracting ADB..."
            Expand-Archive -Path ".\platform-tools-latest-windows.zip" -DestinationPath "C:\adb" -Force
            Remove-Item ".\platform-tools-latest-windows.zip" -Recurse -Force
            return $true
        }

    catch {
        Write-Warning "Failed to download ADB"
        return $false
    }
}

# Check for ADB-Downloader
if (-not (ADB-Downloader)) {
    break
}

# --- ADB Installer --- #
function ADB-Installer {
     try {
        Write-Host "Installing ADB..."
        $InstallLocation = "C:\adb"

        # To add folder to PATH
        $persistedPath = [Environment]::GetEnvironmentVariable('Path', [EnvironmentVariableTarget]::Machine) -split ';'
        if ($persistedPath -notcontains $InstallLocation) {
            $persistedPath = $persistedPath + $InstallLocation | where { $_ }
            [Environment]::SetEnvironmentVariable('Path', $persistedPath -join ';', [EnvironmentVariableTarget]::Machine)
            }

        #To verify if PATH isn't already added
        $envPaths = $env:Path -split ';'
            if ($envPaths -notcontains $InstallLocation) {
                $envPaths = $envPaths + $InstallLocation | where { $_ }
                $env:Path = $envPaths -join ';'
            } 
            Write-Host "ADB Installed Successfully" 
            return $true
     }
     catch {
        Write-Warning "Failed to install ADB"
        return $false
     }
       
    
}

# Check for ADB-Installer
if (-not (ADB-Installer)) {
    break
}

