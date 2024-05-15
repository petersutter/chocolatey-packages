$ErrorActionPreference = 'Stop'
$url64      = "https://github.com/gardener/gardenctl-v2/releases/download/v2.9.0-dev1/gardenctl_v2_windows_amd64.exe"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  Url64bit        = $url64
  ChecksumType64  = 'sha256'
  Checksum64      = "261d8a47cb9a84925ec3cdf615a91d6eed0a1667ffb5fc52ab942a53c15940e5"
  FileFullPath    = "$toolsDir\gardenctl.exe"
}
Get-ChocolateyWebFile @packageArgs
