# Build script for WFC Indicator APK (no Gradle).
# Steps: aapt2 compile+link, javac, d8, repackage, zipalign, apksigner.

param(
    [string]$Proj = "$env:TEMP\opencode\wfc_indicator",
    [string]$Out  = "$env:TEMP\opencode\wfc_indicator.apk"
)

$ErrorActionPreference = "Stop"
$BT   = "D:\System\Apps\android-sdk\build-tools\34.0.0"
$PLAT = "D:\System\Apps\android-sdk\platforms\android-34\android.jar"
$JDK  = "D:\System\Apps\jdk-17\bin"
$KEY  = "$env:TEMP\opencode\testkey\testkey.pk8"
$CERT = "$env:TEMP\opencode\testkey\testkey.x509.pem"
$T    = Join-Path $Proj "build"

if (Test-Path $T) { Remove-Item -Recurse -Force $T }
New-Item -ItemType Directory -Force -Path "$T\compiled", "$T\classes", "$T\dex" | Out-Null

Write-Host "== aapt2 compile"
& "$BT\aapt2.exe" compile --dir "$Proj\res" -o "$T\compiled\res.zip"
if (-not $?) { throw "aapt2 compile failed" }
$compiledArgs = @( "$T\compiled\res.zip" )

Write-Host "== aapt2 link (generate R.java)"
& "$BT\aapt2.exe" link -o "$T\base.apk" -I $PLAT --manifest "$Proj\AndroidManifest.xml" `
    --auto-add-overlay --java "$T\gen" $compiledArgs
if (-not $?) { throw "aapt2 link failed" }

Write-Host "== javac"
$srcs = Get-ChildItem "$Proj\src", "$T\gen" -Recurse -Filter *.java | ForEach-Object { $_.FullName }
$ErrorActionPreference = "Continue"
& "$JDK\javac.exe" -nowarn -source 1.8 -target 1.8 -cp $PLAT -d "$T\classes" $srcs 2>$null
$javacExit = $LASTEXITCODE
$ErrorActionPreference = "Stop"
if ($javacExit -ne 0) { throw "javac failed (exit $javacExit)" }

Write-Host "== d8"
$ErrorActionPreference = "Continue"
& "$BT\d8.bat" --release --lib $PLAT --min-api 26 --output "$T\dex" `
    (Get-ChildItem "$T\classes" -Recurse -Filter *.class | ForEach-Object { $_.FullName }) 2>$null
$d8Exit = $LASTEXITCODE
$ErrorActionPreference = "Stop"
if ($d8Exit -ne 0) { throw "d8 failed (exit $d8Exit)" }

Write-Host "== repackage (add classes.dex)"
Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem
$outApk = "$T\base.apk"
$zipFs = [System.IO.File]::Open($outApk, [System.IO.FileMode]::Open)
$zip = New-Object System.IO.Compression.ZipArchive($zipFs, [System.IO.Compression.ZipArchiveMode]::Update)
$dexBytes = [System.IO.File]::ReadAllBytes((Get-ChildItem "$T\dex" -Filter *.dex | Select-Object -First 1).FullName)
$entry = $zip.GetEntry("classes.dex")
if ($entry) { $entry.Delete() }
$entry = $zip.CreateEntry("classes.dex", [System.IO.Compression.CompressionLevel]::NoCompression)
$es = $entry.Open()
$es.Write($dexBytes, 0, $dexBytes.Length)
$es.Close()
$zip.Dispose()
$zipFs.Close()

Write-Host "== zipalign"
& "$BT\zipalign.exe" -f -p 4 "$T\base.apk" "$T\aligned.apk"
if (-not $?) { throw "zipalign failed" }

Write-Host "== apksigner"
& "$BT\apksigner.bat" sign --key $KEY --cert $CERT --out $Out "$T\aligned.apk"
if (-not $?) { throw "apksigner failed" }
& "$BT\apksigner.bat" verify $Out
if (-not $?) { throw "verify failed" }

Write-Host "BUILD OK -> $Out"
Get-Item $Out | Select-Object FullName, Length