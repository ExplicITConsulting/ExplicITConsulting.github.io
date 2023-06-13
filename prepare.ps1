Set-Location $PSScriptRoot

if ($PSVersionTable.PSEdition -ieq 'desktop') {
    $UTF8Encoding = 'UTF8'
} else {
    $UTF8Encoding = 'UTF8BOM'
}

# Get "Downloads" folder
$DownloadFolder = (Get-ItemProperty 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders').'{374DE290-123F-4565-9164-39C4925E467B}'
$DownloadFolder = Join-Path -Path $DownloadFolder -ChildPath 'Takeout\Drive\ExplicIT Homepage\ExplicIT Consulting GmbH\PUBLISHED'

# Allow search engine indexing
foreach ($htmlfile in @(Get-ChildItem $(Join-Path -Path $DownloadFolder -ChildPath '*.html') -Recurse)) {
    $htmlfilecontent = Get-Content -LiteralPath $htmlfile.fullname -Encoding $UTF8Encoding
    $htmlfilecontent = $htmlfilecontent -replace [regex]::escape('<meta name="robots" content="noindex"'), ''
    Set-Content -LiteralPath $htmlfile.fullname -Value $htmlfilecontent -Encoding $UTF8Encoding -Force
}

# Clear 'docs' folder, but keep 'CNAME' file
Remove-Item $(Join-Path -Path $PSScriptRoot -ChildPath 'docs\*') -Exclude 'CNAME' -Recurse -Force

# Copy website to 'docs' folder
Copy-Item -Path $(Join-Path -Path $DownloadFolder -ChildPath '*') -Destination $(Join-Path -Path $PSScriptRoot -ChildPath 'docs') -Recurse -Force

Write-Host "Don't forget to commit and sync the repository, so that the home is published."