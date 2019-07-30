Update-SessionEnvironment

$deprecatedVersionExists = code --list-extensions | Where-Object { $_ -eq "eg2.tslint" }
if ($deprecatedVersionExists)
{
    Write-Warning "The deprecated vscode-tslint extension is already installed. Uninstalling it to avoid linting files twice."
    code --uninstall-extension eg2.tslint
}

code --install-extension ms-vscode.vscode-typescript-tslint-plugin