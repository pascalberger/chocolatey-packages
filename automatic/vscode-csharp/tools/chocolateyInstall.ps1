$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$extensionName = "csharp-"
$extensionVersion = "1.23.3"
$extensionId = "$toolsDir\$extensionName$extensionVersion.vsix"

Update-SessionEnvironment

Install-VsCodeExtension -extensionId $extensionId
