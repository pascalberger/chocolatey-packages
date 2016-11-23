$packageName = 'git-lfs'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
$32BitUrl = 'https://github.com/git-lfs/git-lfs/releases/download/v1.5.2/git-lfs-windows-1.5.2.exe'
$checksum = '0df926ccb2440cf685ffeefeb410fedd219ccf83f5729b62f63c6db75198d150'
$checksumType = 'sha256'
$validExitCodes = @(
    0 # success
)

Install-ChocolateyPackage -PackageName  "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$32BitUrl" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
