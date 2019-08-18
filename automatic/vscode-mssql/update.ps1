import-module au

$domain = 'https://github.com'
$releases = "$domain/microsoft/vscode-mssql/releases/latest"

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
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    #https://github.com/microsoft/vscode-mssql/releases/download/v1.5.0-alpha.14/mssql-1.6.0-win7-x86.vsix
    $re32  = "mssql-.+-win7-x86.vsix"
    $url32 = $download_page.links | Where-Object href -match $re32 | Select-Object -First 1 -expand href | ForEach-Object { $domain + $_ }
    $version32 = $url -split '-' | Select-Object -Skip 2 -Last 1

    #https://github.com/microsoft/vscode-mssql/releases/download/v1.5.0-alpha.14/mssql-1.6.0-win7-x64.vsix
    $re64  = "mssql-.+-win7-x64.vsix"
    $url64 = $download_page.links | Where-Object href -match $re64 | Select-Object -First 1 -expand href | ForEach-Object { $domain + $_ }
    $version64 = $url -split '-' | Select-Object -Skip 2 -Last 1

    if ($version32 -ne $version64) {  throw "Different versions for 32-Bit and 64-Bit detected." }

    @{
        Version = $version32
        URL32   = $url32
        URL64   = $url64
    }
}

update -ChecksumFor none
