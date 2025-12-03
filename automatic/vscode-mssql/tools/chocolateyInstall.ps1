$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$extensionName = "mssql-"
$extensionVersion = "1.37.1"
$osBitness = Get-OSArchitectureWidth
$extensionId = "$toolsDir\$extensionName$extensionVersion-win-x$osBitness.vsix"

Update-SessionEnvironment

Install-VsCodeExtension -extensionId $extensionId
