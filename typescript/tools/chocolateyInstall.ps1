$packageName = "typescript.vs2013"
$installerType = "exe"
$silentArgs= "/quiet"
$url = "http://download.microsoft.com/download/4/4/3/443F86B7-A89F-48E6-AC96-0AAC2A910A29/TS1.8.5-VSUOOB.50301.00/TypeScript_Dev12.exe"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes @(0)
