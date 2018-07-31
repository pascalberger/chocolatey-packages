$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.1.8/1533021313626/DevExpress.CodeRush.Roslyn-18.1.8.vsix"
    VsVersion = 14 
    Checksum = "6c5d638ebb5a4f97dcd07ddd9caf32cb0e369db9914448e211f3f6f2f6882a91"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
