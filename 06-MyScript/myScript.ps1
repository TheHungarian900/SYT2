<#
.Synopsis
    read and analyze a yaml-file
.DESCRIPTION
    read a yaml-file
    read and output how mny lines the file has
    read and output the keys alphabeticaly sorted
.EXAMPLE
    Example of how to use this cmdlet 
.EXAMPLE
    Another example of how to use this cmdlet 
#>

# Install-Module -Name powershell-yaml
# Import-Module -Name powershell-yaml

$yamlData = Get-Content -Path "C:\#repos\2223-2ahit-syt-GyarDa210119\06-MyScript\example.yaml" -Raw
$yamlObject = $yamlData | ConvertFrom-Yaml
$yamlData | Measure-Object -Line

$keys = $yamlObject.PSObject.Properties.Name | Sort-Object
$keys