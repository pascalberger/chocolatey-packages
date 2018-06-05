$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.1.4/1528191238719/DevExpress.CodeRush.Roslyn-18.1.4.vsix"
    VsVersion = 14 
    Checksum = "ca5381ae19a73291a175f68ba287ee9a5121cd8cc233c1e3bad2eeffd69438cf"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
