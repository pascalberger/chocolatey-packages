$ErrorActionPreference = 'Stop'

Update-SessionEnvironment

Uninstall-VsCodeExtension -extensionId "ms-vscode.PowerShell"
