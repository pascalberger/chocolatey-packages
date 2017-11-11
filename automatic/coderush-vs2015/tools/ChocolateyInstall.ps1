$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/17.1.9/1508168443459/163212/36/DevExpress.CodeRush.Roslyn-17.1.9.vsix"
    VsVersion = 14 
    Checksum = "245067d9e0cdf953d60da1bbb1cd4e9edfa503c03c9fbdf277998bcbad8a580a"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
