$parameters = @{
    PackageName = "SonarLint-2.7.vsix"
    VsixUrl = "https://visualstudiogallery.msdn.microsoft.com/47d1049d-bb27-454e-aab8-24566c85e548/file/169863/20/SonarLint.VSIX-2.8.0.214.vsix"
    VsVersion = 14 
    Checksum = "419DA42C9A526C35D4586343E08A2EACD76FF6CF7CD7270874A1BB4C44A6FA80"
    ChecksumType = "sha256"
}

Install-ChocolateyVsixPackage @parameters
