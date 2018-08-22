$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.1.9/1534943564710/DevExpress.CodeRush.Roslyn-18.1.9.vsix"
    VsVersion = 14 
    Checksum = "f222f5422463b286504cce9dffc87b6dc68ec575d21d875796a29ca08670cac6"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
