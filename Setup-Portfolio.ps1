$ErrorActionPreference = "Stop"

$projectPath = $PSScriptRoot
$requiredNodeMajor = 20

function Test-Command {
    param([string]$Name)
    return $null -ne (Get-Command $Name -ErrorAction SilentlyContinue)
}

Write-Host "Configurazione del Portfolio DRE..." -ForegroundColor Cyan

if (-not (Test-Command "node")) {
    if (-not (Test-Command "winget")) {
        throw "Node.js non e installato e winget non e disponibile. Installa Node.js LTS da https://nodejs.org/"
    }

    Write-Host "Installazione di Node.js LTS..." -ForegroundColor Yellow
    winget install --id OpenJS.NodeJS.LTS --exact --accept-package-agreements --accept-source-agreements
}

$nodeVersion = node --version
$nodeMajor = [int]($nodeVersion.TrimStart("v").Split(".")[0])
if ($nodeMajor -lt $requiredNodeMajor) {
    throw "Node.js $requiredNodeMajor o superiore richiesto. Versione rilevata: $nodeVersion"
}

if (-not (Test-Command "code")) {
    if (Test-Command "winget") {
        Write-Host "Installazione di Visual Studio Code..." -ForegroundColor Yellow
        winget install --id Microsoft.VisualStudioCode --exact --accept-package-agreements --accept-source-agreements
    }
    else {
        Write-Warning "Visual Studio Code non trovato. Potrai modificare i file con un editor a scelta."
    }
}

Set-Location $projectPath
Write-Host "Installazione delle dipendenze..." -ForegroundColor Yellow
npm ci
if ($LASTEXITCODE -ne 0) {
    throw "npm ci non e riuscito."
}

$desktopPath = [Environment]::GetFolderPath("Desktop")
$shortcutPath = Join-Path $desktopPath "Portfolio DRE.lnk"
$targetPath = Join-Path $projectPath "Start-Portfolio.bat"

$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $targetPath
$shortcut.WorkingDirectory = $projectPath
$shortcut.Description = "Modifica e avvia il portfolio DRE"
$shortcut.Save()

Write-Host ""
Write-Host "Installazione completata." -ForegroundColor Green
Write-Host "Il sito sara apribile dal collegamento " -NoNewline
Write-Host "Portfolio DRE" -ForegroundColor Cyan
Write-Host "presente sul Desktop."

$launch = Read-Host "Vuoi avviare il sito ora? (S/n)"
if ($launch -ne "n" -and $launch -ne "N") {
    Start-Process $targetPath -WorkingDirectory $projectPath
}
