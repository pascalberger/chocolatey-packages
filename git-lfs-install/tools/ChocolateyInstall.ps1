$packageName = 'git-lfs'
$installerType = 'exe'
$silentArgs = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART"
$32BitUrl  = 'https://github.com/github/git-lfs/releases/download/v1.2.0/git-lfs-windows-1.2.0.exe'
$validExitCodes = @(
    0 # success
)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$32BitUrl" -validExitCodes $validExitCodes
