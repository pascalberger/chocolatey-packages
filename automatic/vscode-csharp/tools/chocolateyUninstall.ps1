$ErrorActionPreference = 'Stop'

Update-SessionEnvironment

Uninstall-AzureDataStudioExtension -extensionId "ms-vscode.csharp"
