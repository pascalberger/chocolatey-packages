import-module au
import-module PowerShellForGitHub

$repoOwner = 'Microsoft'
$repoName = 'azure-repos-vscode'

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix -FileNameBase $Latest.FileName }

function global:au_SearchReplace {
    @{
        ".\legal\verification.txt" = @{
            "(?i)(Download the following extension:.+)\<.*\>" = "`${1}<$($Latest.URL32)>"
            "(?i)(checksum type:\s+).*" = "`${1}$($Latest.ChecksumType32)"
            "(?i)(checksum:\s+).*" = "`${1}$($Latest.Checksum32)"
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
    
    # https://github.com/microsoft/azure-repos-vscode/releases/download/v1.149.2/team-1.149.2.vsix
    $asset = Get-GitHubReleaseAsset -OwnerName $repoOwner -RepositoryName $repoName -ReleaseId $release.id | Where-Object name -match 'team-.*.vsix'
    $url = $asset.browser_download_url
  
    @{
      Version   = $version
      URL32     = $url
      Filename  = "team-${version}"
      FileType  = 'vsix'
    }
}

update -ChecksumFor none
