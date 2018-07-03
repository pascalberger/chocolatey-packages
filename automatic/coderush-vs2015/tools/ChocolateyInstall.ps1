$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.1.6/1530628017846/DevExpress.CodeRush.Roslyn-18.1.6.vsix"
    VsVersion = 14 
    Checksum = "44fedec5ec9f405924f3bb974514163e5f386fe0271249d0b29686ac587c32db"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
