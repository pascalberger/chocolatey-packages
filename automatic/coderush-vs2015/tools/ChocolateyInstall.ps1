$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.2.8/1551725787244/DevExpress.CodeRush-18.2.8.vsix"
    VsVersion = 14 
    Checksum = "0df2695c3e6792ef6915f2145f2a66c80925c801e6cb942435fd6e5485af0713"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
