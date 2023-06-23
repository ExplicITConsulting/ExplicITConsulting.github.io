Set-Location $PSScriptRoot

if ($PSVersionTable.PSEdition -ieq 'desktop') {
    $UTF8Encoding = 'UTF8'
} else {
    $UTF8Encoding = 'UTF8BOM'
}

# Get "Downloads" folder
$DownloadFolder = (Get-ItemProperty 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders').'{374DE290-123F-4565-9164-39C4925E467B}'

$TakeoutFile = Get-ChildItem $(Join-Path -Path $DownloadFolder -ChildPath 'takeout-*.zip') | Sort-Object -Property name | Select-Object -Last 1

if ($TakeoutFile) {
    if (Test-Path $(Join-Path -Path $DownloadFolder -ChildPath 'takeout')) {
        Remove-Item $(Join-Path -Path $DownloadFolder -ChildPath 'takeout') -Recurse -Force
    }
    
    Expand-Archive -Path $TakeoutFile -DestinationPath $DownloadFolder -Force

    $TakeoutFilesExtracted = Join-Path -Path $DownloadFolder -ChildPath 'Takeout\Drive\ExplicIT Homepage\ExplicIT Consulting GmbH\PUBLISHED'

    # Allow search engine indexing
    foreach ($htmlfile in @(Get-ChildItem $(Join-Path -Path $TakeoutFilesExtracted -ChildPath '*.html') -Recurse)) {
        $htmlfilecontent = Get-Content -LiteralPath $htmlfile.fullname -Encoding $UTF8Encoding

        $htmlfilecontent = $htmlfilecontent -replace [regex]::escape('<meta name="robots" content="noindex">'), ''

        $htmlfilecontent = $htmlfilecontent -replace [regex]::escape('</title>'), ' | ExplicIT Consulting</title>'

        $htmlfilecontent = $htmlfilecontent -replace [regex]::escape('<head>'), @"
<head><meta name='description' content='$([System.Net.WebUtility]::HtmlEncode(@"
We help you to be successful on an individual, team and company level.
Whether we do this in the background or for all to see: Trustworthiness and mediation between management levels, specialist departments and IT are always at the heart of our services.
"@))'>
"@

        Set-Content -LiteralPath $htmlfile.fullname -Value $htmlfilecontent -Encoding $UTF8Encoding -Force
    }

    # Clear 'docs' folder, but keep 'CNAME' file
    Remove-Item $(Join-Path -Path $PSScriptRoot -ChildPath 'docs\*') -Exclude @('CNAME', 'robots.txt') -Recurse -Force

    # Copy website to 'docs' folder
    Copy-Item -Path $(Join-Path -Path $TakeoutFilesExtracted -ChildPath '*') -Destination $(Join-Path -Path $PSScriptRoot -ChildPath 'docs') -Recurse -Force

    # Create sitemap.xml
    @"
<?xml version="1.0" encoding="UTF-8"?>

<urlset
      xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
            http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">

    <url>
        <loc>https://explicitconsulting.at/</loc>
        <lastmod>$(Get-Date -Format 'yyyy-MM-ddTHH:mm:ssK')</lastmod>
        <priority>1.00</priority>
        <changefreq>daily</changefreq>
    </url>

    $(    
        @(Get-ChildItem $(Join-Path -Path $PSScriptRoot -ChildPath 'docs\*.html') -Recurse) | ForEach-Object {
            @"
    <url>
        <loc>https://explicitconsulting.at/$($_.name)</loc>
        <lastmod>$(Get-Date -Format 'yyyy-MM-ddTHH:mm:ssK')</lastmod>
        <priority>0.8</priority>
        <changefreq>daily</changefreq>
    </url>
"@
        }
    )

</urlset>
"@ | Set-Content -Path $(Join-Path -Path $PSScriptRoot -ChildPath 'docs\sitemap.xml') -Encoding $UTF8Encoding -Force

    # Clean download folder
    Remove-Item $(Join-Path -Path $DownloadFolder -ChildPath 'takeout') -Recurse -Force

    Write-Host "Don't forget to commit and sync the repository, so that the home is published."
} else {
    Write-Host 'No takeout file found'
}