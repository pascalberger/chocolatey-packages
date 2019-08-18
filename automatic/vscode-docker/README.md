# <img src="https://cdn.jsdelivr.net/gh/pascalberger/chocolatey-packages@2486d672647c8d06684cd06c4a85255be7135bd9/icons/vscode-docker.png" width="48" height="48"/> [vscode-docker](https://chocolatey.org/packages/vscode-docker)

The Docker extension makes it easy to build, manage and deploy containerized applications from Visual Studio Code.

## Features

* Automatic `Dockerfile`, `docker-compose.yml`, and `.dockerignore` file generation (Press `F1` and search for `Docker: Add Docker files to Workspace`)
* Syntax highlighting, hover tips, IntelliSense (completions) for `docker-compose.yml` and `Dockerfile` files
* Linting (errors and warnings) for `Dockerfile` files
* Command Palette (`F1`) integration for the most common Docker commands (for example `docker build`, `docker push`, etc.)
* Explorer integration for managing images, containers, registries, and more
* Deploy images from a registry directly to Azure App Service
* [Debug .NET Core applications](https://github.com/microsoft/vscode-docker/wiki/Debug-.NET-Core-(Preview)) running in Linux Docker containers

## Notes

* This package requires Visual Studio Code 1.2.0 or newer.
  You can install either the [vscode](https://chocolatey.org/packages/vscode) or [vscode-insiders](https://chocolatey.org/packages/vscode-insiders) package.
* The extension will be installed in any edition of Visual Studio Code which can be found.
* While this package installs a specific version of the extension, Visual Studio Code by default will update the extension to the latest version on startup
  if there's a newer version available on the marketplace.
  See [Extension auto-update](https://code.visualstudio.com/docs/editor/extension-gallery#_extension-autoupdate) for instructions how to disable auto-update.
