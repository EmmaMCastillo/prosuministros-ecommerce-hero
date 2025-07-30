# PowerShell script to download Modius font
# This script will download the Modius font from DaFont

Write-Host "Downloading Modius font from DaFont..." -ForegroundColor Green

# Create fonts directory if it doesn't exist
$fontsDir = "public/fonts"
if (!(Test-Path $fontsDir)) {
    New-Item -ItemType Directory -Path $fontsDir -Force
    Write-Host "Created fonts directory: $fontsDir" -ForegroundColor Yellow
}

# Note: Direct download from DaFont requires manual intervention
# The user needs to:
# 1. Go to https://www.dafont.com/es/modius.font
# 2. Click "Download" button
# 3. Save the file to public/fonts/Modius-Regular.otf

Write-Host "`nIMPORTANTE: Para completar la instalación de la fuente Modius:" -ForegroundColor Cyan
Write-Host "1. Ve a https://www.dafont.com/es/modius.font" -ForegroundColor White
Write-Host "2. Haz clic en 'Download' (Descargar)" -ForegroundColor White
Write-Host "3. Guarda el archivo como 'Modius-Regular.otf' en la carpeta 'public/fonts/'" -ForegroundColor White
Write-Host "4. Si hay una versión Bold, guárdala como 'Modius-Bold.otf'" -ForegroundColor White
Write-Host "`nUna vez descargados los archivos, la fuente se aplicará automáticamente." -ForegroundColor Green

# Check if font files exist
$regularFont = "$fontsDir/Modius-Regular.otf"
$boldFont = "$fontsDir/Modius-Bold.otf"

if (Test-Path $regularFont) {
    Write-Host "✓ Modius-Regular.otf encontrado" -ForegroundColor Green
} else {
    Write-Host "✗ Modius-Regular.otf no encontrado - Necesitas descargarlo" -ForegroundColor Red
}

if (Test-Path $boldFont) {
    Write-Host "✓ Modius-Bold.otf encontrado" -ForegroundColor Green
} else {
    Write-Host "✗ Modius-Bold.otf no encontrado - Opcional" -ForegroundColor Yellow
} 