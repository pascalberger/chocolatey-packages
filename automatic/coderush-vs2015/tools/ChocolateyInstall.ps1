$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://devexpress.gallerycdn.vsassets.io/extensions/devexpress/coderushforroslyn/18.1.5/1529422093193/DevExpress.CodeRush.Roslyn-18.1.5.vsix"
    VsVersion = 14 
    Checksum = "ef53d7f8d1449ba59bf1bb36ad42c64ab66445f215e473e7f147e9230f9aa57c"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
