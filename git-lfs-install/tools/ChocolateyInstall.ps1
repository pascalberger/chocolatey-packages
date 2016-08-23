$packageName = "git-lfs"
$installerType = "exe"
$silentArgs = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART"
$32BitUrl  = "https://github.com/github/git-lfs/releases/download/v1.4.0/git-lfs-windows-1.4.0.exe"
$checksum = "1BD11628103ABF4F4DB64935A7D5E82CD42CFC87AB88F424B64B3D9336A9979C"
$checksumType = "sha256"
$validExitCodes = @(
    0 # success
)

Install-ChocolateyPackage -PackageName  "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$32BitUrl" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
