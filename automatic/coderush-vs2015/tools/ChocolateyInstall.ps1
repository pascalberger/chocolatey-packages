$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.2.5/1545301740332/DevExpress.CodeRush.Roslyn-18.2.5.vsix"
    VsVersion = 14 
    Checksum = "28cab3fde9065a0db66749d51f2501c4ed798ee74bca0417ed4335b812213719"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
