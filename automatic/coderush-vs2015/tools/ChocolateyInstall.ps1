$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/17.2.4/1513018848309/163212/38/DevExpress.CodeRush.Roslyn-17.2.4.vsix"
    VsVersion = 14 
    Checksum = "4ce69aba1e2135947d6fa47ab4c47c1e4f4e11febc488ac0143cc1b92ec0eaac"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
