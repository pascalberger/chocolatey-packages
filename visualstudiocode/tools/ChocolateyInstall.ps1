$packageName = 'VisualStudioCode'
$installerType = 'exe'
$silentArgs = "/silent /mergetasks=!runcode /log=""$env:temp\vscode.log"""
$32BitUrl  = 'https://az764295.vo.msecnd.net/public/0.10.3/VSCodeSetup.exe'
$validExitCodes = @(
    0 # success
)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$32BitUrl" -validExitCodes $validExitCodes