import-module au

$releases = 'https://github.com/github/git-lfs/releases'

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^[$]32BitUrl\s*=\s*)('.*')" = "`$1'$($Latest.URL32)'"
            "(^[$]checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
     }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases

    #git-lfs-windows-1.4.4.exe
    $re  = "git-lfs-windows-.+.exe"
    $url = $download_page.links | ? href -match $re | select -First 1 -expand href

    $url32 = 'https://github.com' + $url

    $filename = $url -split '-' | select -Last 1
    $version = [IO.Path]::GetFileNameWithoutExtension($filename)

    $Latest = @{ URL32 = $url32; Version = $version }
    return $Latest
}

if ($MyInvocation.InvocationName -ne '.') { # run the update only if script is not sourced
    update -ChecksumFor 32 
}