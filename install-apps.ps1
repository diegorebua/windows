
# Aplicativos mantidos
$apps = @(
    "Microsoft.VisualStudioCode"
    "Git.Git"
    "Microsoft.WindowsTerminal"
    "AgileBits.1Password"
    "AgileBits.1Password.CLI"
    "Bambulab.Bambustudio"
    "OpenAI.ChatGPT"
    "Google.Chrome"
    "Google.GoogleDrive"
    "Discord.Discord"
    "RustDesk.RustDesk"
    "Valve.Steam"
    "LianLi.LConnect3"
)

$falhas = @()

foreach ($app in $apps) {
    Write-Host "`nInstalando: $app" -ForegroundColor Cyan

    winget install --id $app --exact --source winget --silent --accept-package-agreements --accept-source-agreements

    if ($LASTEXITCODE -ne 0) {
        $falhas += $app
    }
}

# Aplicativos da Microsoft Store
$storeApps = @(
    "9NKSQGP7F2NH"  # WhatsApp
    "9PFHDD62MXS1"  # Apple Music
)

foreach ($app in $storeApps) {
    Write-Host "`nInstalando: $app" -ForegroundColor Cyan

    winget install --id $app --exact --source msstore --accept-package-agreements --accept-source-agreements

    if ($LASTEXITCODE -ne 0) {
        $falhas += $app
    }
}

Write-Host "`nInstalacao finalizada!" -ForegroundColor Green

if ($falhas.Count -gt 0) {
    Write-Host "Aplicativos que precisam de revisao:" -ForegroundColor Yellow
    $falhas
} else {
    Write-Host "Todos os comandos de instalacao finalizaram sem erros." -ForegroundColor Green
}
