$packageName = 'git-lfs'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
$32BitUrl = 'https://github.com/git-lfs/git-lfs/releases/download/v1.5.1/git-lfs-windows-1.5.1.exe'
$checksum = '71bfef853f651aaba3788124a9430324c679923f6c48d3fb72c11cd327b4d1c9'
$checksumType = 'sha256'
$validExitCodes = @(
    0 # success
)

Install-ChocolateyPackage -PackageName  "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$32BitUrl" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
