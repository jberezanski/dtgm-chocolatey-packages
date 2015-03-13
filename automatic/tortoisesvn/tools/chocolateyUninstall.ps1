$packageName = '{{PackageName}}'
$fileType = 'msi'
$msiPkgCode = (Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | Where-Object {$_.DisplayName -like "$packageName*"}).PSChildName
$silentArgs = "$msiPkgCode /quiet /qn /norestart"
$validExitCodes = @(0)

try {
  Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" -validExitCodes "$validExitCodes"
} catch {
  throw $_.Exception
}