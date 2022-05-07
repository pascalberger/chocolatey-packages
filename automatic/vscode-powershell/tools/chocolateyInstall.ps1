$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$extensionName = "PowerShell-"
$extensionVersion = "2022.5.1"
$extensionId = "$toolsDir\$extensionName$extensionVersion.vsix"

Update-SessionEnvironment

Install-VsCodeExtension -extensionId $extensionId
