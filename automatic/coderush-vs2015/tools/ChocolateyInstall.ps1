$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/16.2.3.16357/1482416435365/163212/22/DevExpress.CodeRush.Roslyn-16.2.3.16357.vsix"
    VsVersion = 14 
    Checksum = "864d808fda301bebde8805a95205826c14cff4b6e65077a1b55f72b98ddee46a"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
