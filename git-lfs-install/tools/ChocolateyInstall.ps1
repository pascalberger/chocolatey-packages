$packageName = "git-lfs"
$installerType = "exe"
$silentArgs = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART"
$32BitUrl  = "https://github.com/github/git-lfs/releases/download/v1.4.2/git-lfs-windows-1.4.2.exe"
$checksum = "28C1F92F6930DB4371431C62C94FA289E6E49261C53DB20CDC87B9C2D064DE90"
$checksumType = "sha256"
$validExitCodes = @(
    0 # success
)

Install-ChocolateyPackage -PackageName  "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$32BitUrl" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
