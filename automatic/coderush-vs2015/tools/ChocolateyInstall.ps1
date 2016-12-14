$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/16.2.3/1481733034816/163212/21/DevExpress.CodeRush.Roslyn-16.2.3.vsix"
    VsVersion = 14 
    Checksum = "d6381d24f82645292bcbece85c4cb8d307ecf0c0fe08e05b6e2387925c1062c2"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
