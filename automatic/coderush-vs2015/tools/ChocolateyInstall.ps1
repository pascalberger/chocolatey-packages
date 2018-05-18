$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.1.3/1526629730682/DevExpress.CodeRush.Roslyn-18.1.3.vsix"
    VsVersion = 14 
    Checksum = "36e6e5122cded168d72848cf1262c1c625117026df158dca46149702504033fa"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
