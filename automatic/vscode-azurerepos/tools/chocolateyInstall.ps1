$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$extensionName = "team-"
$extensionVersion = "1.161.0"
$extensionId = "$toolsDir\$extensionName$extensionVersion.vsix"

Update-SessionEnvironment

Install-VsCodeExtension -extensionId $extensionId
