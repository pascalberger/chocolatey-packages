$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/17.2.3/1510854951330/163212/37/DevExpress.CodeRush.Roslyn-17.2.3.vsix"
    VsVersion = 14 
    Checksum = "e4a68e0bc65b4cf1a2338adfd884613a541720dcb223221e2943f1f09982129a"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
