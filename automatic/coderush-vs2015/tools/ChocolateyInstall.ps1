$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.2.9/1554220579840/DevExpress.CodeRush-18.2.9.vsix"
    VsVersion = 14 
    Checksum = "e0885472e8d05c9284688434dee36b599fa5219200cf7270a886f76de82e1c1b"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
