﻿$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$extensionName = "mssql-"
$extensionVersion = "1.30.0"
$osBitness = Get-OSArchitectureWidth
$extensionId = "$toolsDir\$extensionName$extensionVersion-win7-x$osBitness.vsix"

Update-SessionEnvironment

Install-VsCodeExtension -extensionId $extensionId
