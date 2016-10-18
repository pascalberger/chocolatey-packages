$packageName = "git-lfs"
$installerType = "exe"
$silentArgs = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART"
$32BitUrl  = "https://github.com/github/git-lfs/releases/download/v1.4.3/git-lfs-windows-1.4.3.exe"
$checksum = "E673C2D6528484B9021DE37B6D0958B6229E97FC2EED579DEBB86AA3D5A4CBAE"
$checksumType = "sha256"
$validExitCodes = @(
    0 # success
)

Install-ChocolateyPackage -PackageName  "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$32BitUrl" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
