# Chocolatey Packages

This repository contains the sources for the Chocolatey packages maintained by Pascal Berger. You can install the packages from the [Chocolatey community feed](https://chocolatey.org/profiles/pascalberger). 

[![Build Status](https://ci.appveyor.com/api/projects/status/2pehpwqci1x4k8dt/branch/master?svg=true)](https://ci.appveyor.com/project/pascalberger/chocolatey-packages/branch/master)
[![](http://transparent-favicon.info/favicon.ico)](#)
[Update status](https://gist.github.com/pascalberger/95bd06a2adf814823623f01cf4a7f871)
[![](http://transparent-favicon.info/favicon.ico)](#)
[chocolatey.org profile](https://chocolatey.org/profiles/pascalberger)

## Folder Structure

* automatic - Where automatic packaging and packages are kept. These are packages that are automatically maintained using [AU](https://chocolatey.org/packages/au).
* icons - Where icon files for the packages are kept.
* manual - Where packages that are not automatic are kept.
* setup - Items for prepping the system to ensure for auto packaging.

For setting up your own automatic package repository, please see [Automatic Packaging](https://chocolatey.org/docs/automatic-packages)

## Requirements

* [Chocolatey](https://chocolatey.org).
* PowerShell v4+.
* The [AU module](https://chocolatey.org/packages/au).

The setup folder contains a script for prepping the system to ensure for auto packaging
