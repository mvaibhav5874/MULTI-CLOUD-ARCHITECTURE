try {
  # Install Web Server feature with error handling
  Install-WindowsFeature -Name Web-Server -IncludeManagementTools -ErrorAction Stop

  # Check if the file exists before removing
  $wwwrootPath = "$env:SystemDrive\inetpub\wwwroot" # More robust path
  $filePath = Join-Path -Path $wwwrootPath -ChildPath "iisstart.htm"

  if (Test-Path -Path $filePath) {
    Remove-Item -Path $filePath -ErrorAction Stop -Force # Use -Force cautiously
  }

  # Create the HTML content with proper tags
  $htmlContent = @"
<!DOCTYPE html>
<html>
<head>
  <title>IIS Test Page</title>
</head>
<body>
  <h1>Hello here i am Azure Vm1 </h1>
</body>
</html>
"@
  # change the h1 from vm1 to vm2 for the second vm
  # Add content to the file with error handling
  Add-Content -Path $filePath -Value $htmlContent -ErrorAction Stop

  Write-Host "IIS website created successfully."

} catch {
  Write-Error "An error occurred: $_"
}
