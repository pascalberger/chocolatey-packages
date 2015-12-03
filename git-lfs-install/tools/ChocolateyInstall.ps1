$packageName = 'git-lfs'
$installerType = 'exe'
$silentArgs = "/S"
$32BitUrl  = 'https://github.com/github/git-lfs/releases/download/v1.1.0/git-lfs-windows-amd64-1.1.0.exe'
$validExitCodes = @(
    0 # success
)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$32BitUrl" -validExitCodes $validExitCodes