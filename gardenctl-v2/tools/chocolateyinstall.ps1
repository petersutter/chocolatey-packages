$ErrorActionPreference = 'Stop'
$url64      = "https://github.com/gardener/gardenctl-v2/releases/download/2.0.9-dev/gardenctl_v2_windows_amd64.exe"
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  Url64bit        = $url64
  ChecksumType64  = 'sha256'
  Checksum64      = "d75168bcdba53c1539cfa5fbb077f590ad1f3106faee6094d048d8c5328022f0"
  FileFullPath    = "$toolsDir\gardenctl.exe"
}
Get-ChocolateyWebFile @packageArgs
