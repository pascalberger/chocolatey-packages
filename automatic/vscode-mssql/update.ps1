import-module au
import-module PowerShellForGitHub

$repoOwner = 'microsoft'
$repoName = 'vscode-mssql'

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }

function global:au_SearchReplace {
    @{
        ".\legal\verification.txt" = @{
            "(?i)(Download the following extension:.+)\<.*\>" = "`${1}<$($Latest.URL64)>"
            "(?i)(checksum type:\s+).*" = "`${1}$($Latest.ChecksumType64)"
            "(?i)(checksum:\s+).*" = "`${1}$($Latest.Checksum64)"
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
    
    # https://github.com/microsoft/vscode-mssql/releases/download/v1.27.0/mssql-1.27.0.vsix
    $asset64 = $assets | Where-Object name -match 'mssql-.*.vsix'
    $url64 = $asset64.browser_download_url

    @{
      Version   = $version
      URL64     = $url64
      FileType  = 'vsix'
    }
}

update -ChecksumFor none
