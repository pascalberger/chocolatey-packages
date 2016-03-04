$packageName = 'SourceTree'
$installerType = 'exe'
$url  = 'https://downloads.atlassian.com/software/sourcetree/windows/SourceTreeSetup_1.8.2.11.exe'
$silentArgs = '/passive'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url" -validExitCodes $validExitCodes
