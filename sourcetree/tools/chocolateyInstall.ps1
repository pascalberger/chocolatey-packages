$packageName = 'SourceTree'
$installerType = 'exe'
$url  = 'http://downloads.atlassian.com/software/sourcetree/windows/SourceTreeSetup_1.7.0.32509.exe'
$silentArgs = '/passive'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url" -validExitCodes $validExitCodes
