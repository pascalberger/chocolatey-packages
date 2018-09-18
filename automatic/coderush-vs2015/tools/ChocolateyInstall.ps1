$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.1.11/1537285054247/DevExpress.CodeRush.Roslyn-18.1.11.vsix"
    VsVersion = 14 
    Checksum = "3e93b416aa20906648bc05ffda064833e0a38cb25e05633872af86ef75c10869"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
