# Updates vendor/bsl_console/index.html and the EDT template from salexdv/bsl_console (webpack).
# Usage: powershell -File scripts/Update-BslConsole.ps1

$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path -Parent $PSScriptRoot
$VendorHtml = Join-Path $RepoRoot "vendor\bsl_console\index.html"
$TemplateTxt = Join-Path $RepoRoot "Конвертация_данных_31_демо.Conversion_3_Plus\src\CommonTemplates\bsl_console\Template.txt"
$WorkDir = Join-Path $env:TEMP ("bsl_console_webpack_" + [Guid]::NewGuid().ToString("N"))

Write-Host "Cloning salexdv/bsl_console (webpack)..."
git clone --depth 1 --branch webpack https://github.com/salexdv/bsl_console.git $WorkDir

Push-Location $WorkDir
try {
    Write-Host "npm install..."
    npm install
    if ($LASTEXITCODE -ne 0) {
        throw "npm install failed with exit code $LASTEXITCODE"
    }

    Write-Host "npm run build:pack..."
    npm run build:pack
    if ($LASTEXITCODE -ne 0) {
        throw "npm run build:pack failed with exit code $LASTEXITCODE"
    }

    $BuiltHtml = Join-Path $WorkDir "dist\index.html"
    if (-not (Test-Path $BuiltHtml)) {
        throw "Build output not found: $BuiltHtml"
    }

    $VendorDir = Split-Path -Parent $VendorHtml
    if (-not (Test-Path $VendorDir)) {
        New-Item -ItemType Directory -Path $VendorDir | Out-Null
    }

    Copy-Item -Path $BuiltHtml -Destination $VendorHtml -Force
    Write-Host "Copied to $VendorHtml"

    $TemplateDir = Split-Path -Parent $TemplateTxt
    if (-not (Test-Path $TemplateDir)) {
        throw "EDT template directory not found: $TemplateDir"
    }
    Copy-Item -Path $BuiltHtml -Destination $TemplateTxt -Force
    Write-Host "Copied to $TemplateTxt"
}
finally {
    Pop-Location
    Remove-Item -Path $WorkDir -Recurse -Force -ErrorAction SilentlyContinue
}

Write-Host "bsl_console template updated."
