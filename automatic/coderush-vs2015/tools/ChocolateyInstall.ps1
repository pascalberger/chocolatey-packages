$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/17.2.8/1523881891808/DevExpress.CodeRush.Roslyn-17.2.8.vsix"
    VsVersion = 14 
    Checksum = "f4cdd7e886e767faa37f7c9965a17245af372d1284386b46d5e6aedc71ee46a8"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
