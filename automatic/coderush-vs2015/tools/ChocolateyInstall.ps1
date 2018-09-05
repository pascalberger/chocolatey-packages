$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.1.10/1536041977383/DevExpress.CodeRush.Roslyn-18.1.10.vsix"
    VsVersion = 14 
    Checksum = "92b443a3aedbe8cefb4eb74907e07b996a2568f6884ed794a2f3b05429dc7380"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
