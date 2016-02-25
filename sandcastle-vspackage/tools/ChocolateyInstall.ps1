$versionNumber = '2015.10.10.0'
$url = 'https://github.com/EWSoftware/SHFB/releases/download/v' + $versionNumber + '/SHFBInstaller_v' + $versionNumber + '.zip' # download url

Install-ChocolateyVsixPackage 'visualstudio2013-webessentials.vsix' http://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/32/WebEssentials2013.vsix 12