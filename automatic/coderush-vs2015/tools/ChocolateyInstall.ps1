$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.1.7/1531939053058/DevExpress.CodeRush.Roslyn-18.1.7.vsix"
    VsVersion = 14 
    Checksum = "b027577e3ae73a69b89ccf5f74c9ccff7202b19ec57913964b64ac92d8f8aa5d"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
