$ErrorActionPreference = 'Stop'

Update-SessionEnvironment

Uninstall-VsCodeExtension -extensionId "ms-azuretools.vscode-docker"
