$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.2.7/1549374728022/DevExpress.CodeRush.Roslyn-18.2.7.vsix"
    VsVersion = 14 
    Checksum = "9f25267ee0b2e83e60dee8664bbe5083bcb9f631ccc7dfdd7d332f760cbb9312"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
