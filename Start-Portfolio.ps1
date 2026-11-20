$ErrorActionPreference = "Stop"
$projectPath = $PSScriptRoot

Set-Location $projectPath

if (Get-Command code -ErrorAction SilentlyContinue) {
    Start-Process code -ArgumentList $projectPath
}

$server = Start-Process -FilePath "npm.cmd" -ArgumentList "run", "dev", "--", "--host", "127.0.0.1" -WorkingDirectory $projectPath -PassThru

$url = "http://127.0.0.1:4321"
$ready = $false
for ($attempt = 0; $attempt -lt 30; $attempt++) {
    Start-Sleep -Milliseconds 500
    try {
        $response = Invoke-WebRequest -Uri $url -UseBasicParsing -TimeoutSec 1
        if ($response.StatusCode -eq 200) {
            $ready = $true
            break
        }
    }
    catch {
    }
}

if (-not $ready) {
    Write-Warning "Il server non ha risposto entro 15 secondi. Il sito potrebbe essere ancora in avvio."
}

Start-Process $url
Write-Host "Il sito e disponibile su $url" -ForegroundColor Cyan
Write-Host "Tieni aperta questa finestra mentre usi il sito."

Wait-Process -Id $server.Id
