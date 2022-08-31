$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$extensionName = "PowerShell-"
$extensionVersion = "2022.8.5"
$extensionId = "$toolsDir\$extensionName$extensionVersion.vsix"

Update-SessionEnvironment

Install-VsCodeExtension -extensionId $extensionId
