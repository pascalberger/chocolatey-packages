$ErrorActionPreference = 'Stop'

Update-SessionEnvironment

Uninstall-VsCodeExtension -extensionId "ms-mssql.mssql"
