$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/17.2.7/1521035278406/DevExpress.CodeRush.Roslyn-17.2.7.vsix"
    VsVersion = 14 
    Checksum = "2b2f4de41c6a659579e256504350ee0d1289836ffe5c4f651026799225ca45a1"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
