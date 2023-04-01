import-module au
import-module PowerShellForGitHub

$repoOwner = 'microsoft'
$repoName = 'vscode-mssql'

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }

function global:au_SearchReplace {
    @{
        ".\legal\verification.txt" = @{
            "(?i)(32-Bit.+)\<.*\>" = "`${1}<$($Latest.URL32)>"
            "(?i)(64-Bit.+)\<.*\>" = "`${1}<$($Latest.URL64)>"
            "(?i)(checksum type 32-bit:\s+).*" = "`${1}$($Latest.ChecksumType32)"
            "(?i)(checksum 32-bit:\s+).*" = "`${1}$($Latest.Checksum32)"
            "(?i)(checksum type 64-bit:\s+).*" = "`${1}$($Latest.ChecksumType64)"
            "(?i)(checksum 64-bit:\s+).*" = "`${1}$($Latest.Checksum64)"
        }
        
        ".\tools\chocolateyInstall.ps1" = @{
            "(extensionVersion\s*=\s*)`"([^*]+)`"" = "`$1`"$($Latest.Version)`""
        }
     }
}

function global:au_GetLatest {
    $release = Get-GitHubRelease -OwnerName $repoOwner -RepositoryName $repoName -Latest
    $version = $release.tag_name
    if ($version.StartsWith('v')) {
      $version = $version.Substring(1)
    }

    $assets = Get-GitHubReleaseAsset -OwnerName $repoOwner -RepositoryName $repoName -ReleaseId $release.id
    
    # https://github.com/microsoft/vscode-mssql/releases/download/v1.18.0/mssql-1.18.0-win-x86.vsix
    $asset32 = $assets | Where-Object name -match 'mssql-.*-win-x86.vsix'
    $url32 = $asset32.browser_download_url

    # https://github.com/microsoft/vscode-mssql/releases/download/v1.18.0/mssql-1.18.0-win-x64.vsix
    $asset64 = $assets | Where-Object name -match 'mssql-.*-win-x64.vsix'
    $url64 = $asset64.browser_download_url

    @{
      Version   = $version
      URL32     = $url32
      URL64     = $url64
      FileType  = 'vsix'
    }
}

update -ChecksumFor none
