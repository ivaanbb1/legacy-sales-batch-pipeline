$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $PSScriptRoot
Set-Location $projectRoot

if (-not (Get-Command sqlite3 -ErrorAction SilentlyContinue)) {
    throw "SQLite no esta disponible en el PATH."
}

$dbPath = "data/output/sales_reporting.db"
if (Test-Path $dbPath) { Remove-Item $dbPath }

sqlite3 $dbPath ".read sql/schema.sql"
sqlite3 $dbPath ".mode csv" ".import --skip 1 data/output/SALES_CLEAN.csv sales_clean"
sqlite3 $dbPath ".read sql/analytics_queries.sql"

Write-Host "Base SQLite creada en $dbPath"
