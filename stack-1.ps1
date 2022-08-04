import-module powershell-yaml

$fileContent = Get-Content "C:\Users\JChai\source\repos\ps-wsp\assets\test.yaml"

$content = ''

foreach ($line in $fileContent) 
{ 
    $content = $content + "`n" + $line 
    # Write-Host $line
}

$yaml = ConvertFrom-YAML $content

$yaml.report.filters.metadata['tags'].getType().FullName
#  += @("Python", "C++", "Java", "TypeScript")

$yaml.report.filters.metadata
# Write-Host $yaml.getType().FullName