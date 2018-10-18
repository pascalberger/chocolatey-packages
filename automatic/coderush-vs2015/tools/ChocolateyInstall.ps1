$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.1.13/1539850307565/DevExpress.CodeRush.Roslyn-18.1.13.vsix"
    VsVersion = 14 
    Checksum = "f3e5d67c906f2d663cdcb7065d2855bd3d230935bce0371d04ae34d6ebc33757"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
