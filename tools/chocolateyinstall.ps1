
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://cdn.stardock.us/downloads/public/software/fences/Fences3-sd-setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Stardock Fences 3'

  checksum      = '178BA67902FC6A05A040ED3D2F537A95'
  checksumType  = 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/s /noreboot'
}

Install-ChocolateyPackage @packageArgs










    








