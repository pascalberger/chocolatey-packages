$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/16.1.9/1479316540606/163212/20/DevExpress.CodeRush.Roslyn-16.1.9.vsix"
    VsVersion = 14 
    Checksum = "2BE14CC18CEDE73EF5B67C459D8198948078B3177A1306F270BA8677D2482BDD"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
