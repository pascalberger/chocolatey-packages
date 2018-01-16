$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/17.2.5/1516115519701/DevExpress.CodeRush.Roslyn-17.2.5.vsix"
    VsVersion = 14 
    Checksum = "694bf55592317a6994625d66e1d83f3eceef64d9763a3510257c63cb068f4782"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
