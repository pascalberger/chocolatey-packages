$packageName = "git-lfs"
$installerType = "exe"
$silentArgs = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART"
$32BitUrl  = "https://github.com/github/git-lfs/releases/download/v1.4.4/git-lfs-windows-1.4.4.exe"
$checksum = "2E089B672B0241BA0C3474C345A63A627DAD93B3C0863B8C28A9C8FABF684ABD"
$checksumType = "sha256"
$validExitCodes = @(
    0 # success
)

Install-ChocolateyPackage -PackageName  "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$32BitUrl" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
