# <img src="https://cdn.jsdelivr.net/gh/pascalberger/chocolatey-packages@885495fc3e3a6450c6173d2d654f3baf351f7388/icons/vscode-editorconfig.png" width="48" height="48"/> [vscode-editorconfig](https://chocolatey.org/packages/vscode-editorconfig)

This plugin [attempts](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig#known-issues) to override user/workspace settings with settings found in `.editorconfig` files. No additional or vscode-specific files are required. As with any EditorConfig plugin, if `root=true` is not specified, EditorConfig [will continue to look](https://editorconfig.org/#file-location) for an `.editorconfig` file outside of the project.

## Notes

* The package always installs the latest version of the extension.
  The version of the Chocolatey package reflects not the version of the extension.
