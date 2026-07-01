$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $PSScriptRoot
Set-Location $projectRoot

if (-not (Get-Command cobc -ErrorAction SilentlyContinue)) {
    throw "GnuCOBOL no esta disponible en el PATH."
}

New-Item -ItemType Directory -Force -Path "data/output" | Out-Null
cobc -x -free -I copybooks -o "data/output/SALESBATCH.exe" "cobol/SALESBATCH.cbl"
& "data/output/SALESBATCH.exe"

Write-Host "Proceso batch finalizado. Salidas disponibles en data/output."
