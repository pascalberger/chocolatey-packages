$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.1.12/1537797625692/DevExpress.CodeRush.Roslyn-18.1.12.vsix"
    VsVersion = 14 
    Checksum = "5706ddb48611d47840e2ed7e4df8fc1904569a1d570366b57982d83e98b7b39a"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
