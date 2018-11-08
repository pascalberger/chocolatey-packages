$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.2.3/1541687433816/DevExpress.CodeRush.Roslyn-18.2.3.vsix"
    VsVersion = 14 
    Checksum = "611495bdfc8f684071d7c763756c2d6cf9f4837e0f20d8ef6e260771aa6fea8c"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
