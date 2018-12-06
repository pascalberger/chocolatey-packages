$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.2.4/1544105186774/DevExpress.CodeRush.Roslyn-18.2.4.vsix"
    VsVersion = 14 
    Checksum = "144490c18b2b77b4fe0ca8ab6c2971da77895c809eedeaee9b8c90786ac80fce"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
