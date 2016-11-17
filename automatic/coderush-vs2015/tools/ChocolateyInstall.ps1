$parameters = @{
    PackageName = "coderush-vs2015"
    VsixUrl = "https://visualstudiogallery.msdn.microsoft.com/8a8390ae-1f71-4659-9d8d-5dd56fd8a72e/file/163212/15/DevExpress.CodeRush.Roslyn-16.1.8.vsix"
    VsVersion = 14 
    Checksum = "668A4A60E920CA9A856C09F98979A6886253227E18996564B64FEEAF58F09F7B"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters