$packageName = 'git-lfs'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
$32BitUrl = 'https://github.com/github/git-lfs/releases/download/v1.4.4/git-lfs-windows-1.4.4.exe'
$checksum = '2e089b672b0241ba0c3474c345a63a627dad93b3c0863b8c28a9c8fabf684abd'
$checksumType = 'sha256'
$validExitCodes = @(
    0 # success
)

Install-ChocolateyPackage -PackageName  "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$32BitUrl" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
