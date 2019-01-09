$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.2.6/1547048044042/DevExpress.CodeRush.Roslyn-18.2.6.vsix"
    VsVersion = 14 
    Checksum = "43d5656a24055eabc516fb5b73f5bd42c96d2d8158a2210b768fc43682c0487d"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
