$packageName = 'git-lfs'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
$32BitUrl = 'https://github.com/git-lfs/git-lfs/releases/download/v1.5.0/git-lfs-windows-1.5.0.exe'
$checksum = '1b1b93a834bee02074ee7afd00c03d09dfaaafeeaa69368c36b520b389b1cded'
$checksumType = 'sha256'
$validExitCodes = @(
    0 # success
)

Install-ChocolateyPackage -PackageName  "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$32BitUrl" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
