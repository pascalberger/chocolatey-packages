$packageName = 'officedevtools'
$installerType = 'exe'
$silentArgs = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART"
$32BitUrl  = 'https://www.microsoft.com/en-us/download/confirmation.aspx?id=51683'
$validExitCodes = @(
    0 # success
)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$32BitUrl" -validExitCodes $validExitCodes