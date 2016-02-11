$packageName = "typescript.vs2013"
$installerType = "exe"
$silentArgs= "/quiet"
$url = "https://visualstudiogallery.msdn.microsoft.com/2d42d8dc-e085-45eb-a30b-3f7d50d55304/file/151666/1/TypeScript_1.4_VS2013.exe"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes @(0)