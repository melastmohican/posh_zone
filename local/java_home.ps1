if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
$paths = (Get-ChildItem "C:\Program Files\Java" -Directory | Select-Object FullName | ForEach-Object { $_.FullName })
$fileChoices = @()
for ($i=0; $i -lt $paths.Count; $i++) {
    $fileChoices += [System.Management.Automation.Host.ChoiceDescription]("$($paths[$i]) &$($i)")
}  
$userChoice = $host.UI.PromptForChoice('Select File', 'Choose a file', $fileChoices, 0)
$path = $paths[$userChoice]
Write-Host "$path"

# $filename = Get-ChildItem "C:\Program Files\Java" -Directory  | Select-Object FullName | Out-GridView -Title 'Choose a directory' -PassThru | ForEach-Object { $_.FullName }
# Write-Host "$filename"

### Set an environment variable using the System.Environment .NET class
[System.Environment]::SetEnvironmentVariable('JAVA_HOME', "$path" ,[System.EnvironmentVariableTarget]::Machine)

Write-Host -Object ('The key that was pressed was: {0}' -f [System.Console]::ReadKey().Key.ToString());