import-module au

$releases = 'https://marketplace.visualstudio.com/items?itemName=DevExpress.CodeRushforRoslyn'

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix -FileNameBase $Latest.FileName }

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(PackageName\s*=\s*)`"([^*]+)`"" = "`$1`"$($Latest.PackageName)`""
            "(VsixUrl\s*=\s*)`"([^*]+)`"" = "`$1`"$($Latest.URL32)`""
            "(Checksum\s*=\s*)`"([^*]+)`"" = "`$1`"$($Latest.Checksum)`""
        }
     }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re      = 'CodeRushforRoslyn/.+?/vspackage$'
    $url     = $download_page.links | Where-Object href -match $re | ForEach-Object { "https://marketplace.visualstudio.com" + $_.href  }
    $version = $url -split '/' | Select-Object -Last 1 -Skip 1

    @{
        Version   = $version
        URL32     = $url
        Filename  = "DevExpress.CodeRush-${version}"
    }
}

Write-Host "ignored until fixed as updater blocks"
return 'ignore'

update -ChecksumFor none