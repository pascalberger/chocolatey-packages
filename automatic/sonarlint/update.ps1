import-module au

$releases = 'https://visualstudiogallery.msdn.microsoft.com/47d1049d-bb27-454e-aab8-24566c85e548'

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(VsixUrl\s*=\s*)`"([^*]+)`"" = "`$1`"$($Latest.URL32)`""
            "(Checksum\s*=\s*)`"([^*]+)`"" = "`$1`"$($Latest.Checksum)`""
        }
     }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases

    #https://visualstudiogallery.msdn.microsoft.com/47d1049d-bb27-454e-aab8-24566c85e548/file/169863/20/SonarLint.VSIX-2.8.0.214.vsix
    $re = "SonarLint.VSIX-.+.vsix"
    $url = $download_page.links | ? href -match $re | select -First 1 -expand href
    $url = ($url -split ':/')[1]

    $url32 = 'https://visualstudiogallery.msdn.microsoft.com/' + $url

    $filename = $url -split '-' | select -Last 1
    $version = [IO.Path]::GetFileNameWithoutExtension($filename)
    $checksum = Get-RemoteChecksum $url32

    @{
        URL32     = $url32
        Version   = $version
        Checksum  = $checksum
    }
}

update -ChecksumFor none