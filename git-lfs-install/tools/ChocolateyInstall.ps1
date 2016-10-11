$packageName = "git-lfs"
$installerType = "exe"
$silentArgs = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART"
$32BitUrl  = "https://github.com/github/git-lfs/releases/download/v1.4.2/git-lfs-windows-1.4.2.exe"
$checksum = "72E515410F187011639FC27E9C1B1A9B"
$checksumType = "sha256"
$validExitCodes = @(
    0 # success
)

Install-ChocolateyPackage -PackageName  "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$32BitUrl" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
