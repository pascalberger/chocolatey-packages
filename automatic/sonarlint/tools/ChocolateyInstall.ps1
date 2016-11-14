$parameters = @{
    PackageName = "SonarLint-2.7.vsix"
    VsixUrl = "https://visualstudiogallery.msdn.microsoft.com/47d1049d-bb27-454e-aab8-24566c85e548/file/169863/19/SonarLint-2.7.vsix"
    VsVersion = 14 
    Checksum = "8E96CC37B257C9F88FAA2F01DE4573DD6E90F68D16C8B43A72A154FF641F70A6"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
