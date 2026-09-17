# Build the self-contained voLTE/VoWiFi KernelSU module zip.
# One zip = IMS patch (patched jars) + the WFC/VoLTE status-bar indicator app.
# Steps:
#   1. build the indicator apk via checker/wfc_indicator/build.ps1
#   2. stage module/volte_fw (minus install.sh) plus the apk
#   3. pack with tar.exe -a -cf (Compress-Archive corrupts entry paths)
# Usage: powershell -ExecutionPolicy Bypass -File build-release.ps1
param(
    [string]$Repo = $PSScriptRoot,
    [string]$Out  = ""
)

$ErrorActionPreference = "Stop"

$module = Join-Path $Repo "module\volte_fw"
$checker = Join-Path $Repo "checker\wfc_indicator"
$apk    = Join-Path $env:TEMP "opencode\wfc_indicator.apk"
$stage  = Join-Path $env:TEMP "opencode\volte_fw_stage"
if (-not $Out) { $Out = Join-Path $Repo "volte_fw-v5.zip" }

Write-Host "== build indicator apk"
& powershell -ExecutionPolicy Bypass -File (Join-Path $checker "build.ps1") -Proj $checker -Out $apk

Write-Host "== stage module payload"
if (Test-Path $stage) { Remove-Item -Recurse -Force $stage }
New-Item -ItemType Directory -Force -Path $stage | Out-Null
Get-ChildItem $module | Where-Object { $_.Name -ne "install.sh" } | ForEach-Object {
    Copy-Item -Recurse -Force $_.FullName (Join-Path $stage $_.Name)
}
Copy-Item -Force $apk (Join-Path $stage "wfc_indicator.apk")

Write-Host "== pack $Out"
if (Test-Path $Out) { Remove-Item -Force $Out }
Push-Location $stage
try {
    & tar.exe -a -cf $Out *
    if (-not $?) { throw "tar failed" }
} finally {
    Pop-Location
}

Get-Item $Out | Select-Object FullName, Length
Get-FileHash $Out -Algorithm SHA256 | Select-Object Hash
