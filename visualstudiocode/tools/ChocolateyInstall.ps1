$packageName = 'VisualStudioCode'
$installerType = 'exe'
$silentArgs = "/silent /log=""$env:temp\vscode.log"""
$32BitUrl  = 'https://az764295.vo.msecnd.net/stable/db71ac615ddf9f33b133ff2536f5d33a77d4774e/VSCodeSetup-stable.exe'
$validExitCodes = @(
    0 # success
)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$32BitUrl" -validExitCodes $validExitCodes