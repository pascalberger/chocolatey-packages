$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/17.2.6/1518618624990/DevExpress.CodeRush.Roslyn-17.2.6.vsix"
    VsVersion = 14 
    Checksum = "cbd7e4e4ca45e2b70f332ed5b006fa5c133287e07d81ed38c0d285583eb25d28"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
