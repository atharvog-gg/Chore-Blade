# =========================================================================
# CHOREBLADE / SWEEPPROTOCOL - TEST VAULT GENERATOR
# Generates a realistic, safe, messy directory structure on disk
# for testing the Web File System Access API in ChoreBlade.
# =========================================================================

param(
    [string]$TargetDir = ".\test-vault\MessyFolder_Test"
)

Write-Host "[CHOREBLADE] Generating realistic test clutter at: $TargetDir" -ForegroundColor Cyan

if (Test-Path $TargetDir) {
    Write-Host "Removing existing test folder..." -ForegroundColor Yellow
    Remove-Item -Path $TargetDir -Recurse -Force
}

New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null

# 1. Generate Temp & Log Files
Write-Host "Creating temporary caches and logs..." -ForegroundColor DarkGray
Set-Content -Path "$TargetDir\temp_installer_extract_44012.tmp" -Value "TEMP_SESSION_TOKEN_0192837482"
Set-Content -Path "$TargetDir\temp_installer_extract_44013.tmp" -Value "CACHED_PAYLOAD_DATA_RAW_BIN"
Set-Content -Path "$TargetDir\crash_dump_stack_overflow.dmp" -Value "STACK_TRACE_CORRUPTED_KERNEL_HEAP"
Set-Content -Path "$TargetDir\debug_stdout_verbose_level_99.log" -Value "LOG_VERBOSE_DEBUG_RUN_TIMESTAMP_2024"
Set-Content -Path "$TargetDir\0_byte_ghost_file.txt" -Value ""

# 2. Generate Messy & Duplicate Documents
Write-Host "Creating messy named documents..." -ForegroundColor DarkGray
Set-Content -Path "$TargetDir\invoice_2023_oct_v2_REALLY_FINAL(2).pdf" -Value "Invoice Details Oct 2023 - Total `$4,500.00"
Set-Content -Path "$TargetDir\invoice_2023_oct_v1.pdf" -Value "Invoice Details Oct 2023 - Total `$4,500.00"
Set-Content -Path "$TargetDir\Untilted document (4).docx" -Value "Draft proposal notes from Tuesday sync"
Set-Content -Path "$TargetDir\dataset_raw_uncleaned_2022.csv" -Value "Customer churn prediction dataset"

# 3. Generate Mock Images & Duplicates
Write-Host "Creating image clutter..." -ForegroundColor DarkGray
Set-Content -Path "$TargetDir\Screenshot 2024-03-12 at 11.45.22.png" -Value "PNG_MOCK_IMAGE_DATA_001"
Set-Content -Path "$TargetDir\Screenshot 2024-03-12 at 11.46.01.png" -Value "PNG_MOCK_IMAGE_DATA_002"
Set-Content -Path "$TargetDir\Screenshot 2024-03-12 at 11.46.45.png" -Value "PNG_MOCK_IMAGE_DATA_003"
Set-Content -Path "$TargetDir\IMG_4902_copy (1).PNG" -Value "PHOTO_RAW_MOCK"
Set-Content -Path "$TargetDir\IMG_4902.PNG" -Value "PHOTO_RAW_MOCK"

# 4. Generate Mock Executables
Write-Host "Creating mock executables..." -ForegroundColor DarkGray
Set-Content -Path "$TargetDir\free_crypto_miner_patch_v3.bat" -Value "@echo off`necho Free crypto miner running...`npause"
Set-Content -Path "$TargetDir\slack_desktop_installer.msi" -Value "MZ_MOCK_EXE_HEADER_DATA"
Set-Content -Path "$TargetDir\python-3.12.1-amd64 (1).exe" -Value "MZ_MOCK_PYTHON_INSTALLER"

# 5. Generate Large Mock File (Bloat Titan)
Write-Host "Creating 25MB Bloated Archive Boss..." -ForegroundColor Magenta
$largeBuffer = New-Object byte[] (25 * 1024 * 1024)
[System.IO.File]::WriteAllBytes((Join-Path (Resolve-Path $TargetDir) "system_image_backup_titan.iso"), $largeBuffer)

Write-Host "Test Clutter Generation Complete!" -ForegroundColor Green
$resolved = Resolve-Path $TargetDir
Write-Host "Folder path: $resolved" -ForegroundColor Cyan
Write-Host "You can now click 'CONNECT REAL FOLDER' in ChoreBlade and select this folder to triage real files with zero personal risk!" -ForegroundColor Green
