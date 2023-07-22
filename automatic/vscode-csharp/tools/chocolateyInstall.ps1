$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$extensionName = "csharp-"
$extensionVersion = "1.26.0"
$extensionId = "$toolsDir\$extensionName$extensionVersion-win32-x64.vsix"

Update-SessionEnvironment

Install-VsCodeExtension -extensionId $extensionId
