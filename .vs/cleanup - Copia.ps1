# Ensure the argument count is correct
if ($args.Count -ne 1) {
    Write-Host "Usage: script.ps1 <TargetDirectory>"
    exit 1
}

# Store the target directory from arguments
$TargetDirectory = $args[0]

# Delete files with .pdb and .lib extensions
Get-ChildItem -Path $TargetDirectory -Filter *.pdb -File | Remove-Item -Force
Get-ChildItem -Path $TargetDirectory -Filter *.lib -File | Remove-Item -Force

# Delete directories
Remove-Item -Path $TargetDirectory\bled -Force -Recurse
Remove-Item -Path $TargetDirectory\ext2fs -Force -Recurse
Remove-Item -Path $TargetDirectory\getopt -Force -Recurse
Remove-Item -Path $TargetDirectory\libdcio* -Force -Recurse
Remove-Item -Path $TargetDirectory\ms-sys -Force -Recurse
Remove-Item -Path $TargetDirectory\rufus -Force -Recurse
Remove-Item -Path $TargetDirectory\syslinux* -Force -Recurse
Remove-Item -Path $TargetDirectory\libcdio-driver -Force -Recurse
Remove-Item -Path $TargetDirectory\libcdio-iso9660 -Force -Recurse
Remove-Item -Path $TargetDirectory\libcdio-udf -Force -Recurse

# Output the target directory for verification
Write-Host "Target Directory: $TargetDirectory"

# Exit with success status code
exit 0
