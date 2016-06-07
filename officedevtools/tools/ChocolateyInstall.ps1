$packageName = 'officedevtools'
$installerType = 'exe'
$silentArgs = "/S /NoRestart"
$32BitUrl  = 'https://download.microsoft.com/download/8/C/2/8C27B997-8843-462D-91CB-6F461D26BB8B/14.0.23930/enu/cba_bundle.exe'
$validExitCodes = @(
    0 # success
)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$32BitUrl" -validExitCodes $validExitCodes