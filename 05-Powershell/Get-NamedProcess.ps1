<#
.Synopsis
    We Want to list all processes with a given name
.DESCRIPTION
    more text...
.EXAMPLE
    Get-NamedProcess -Name powershell -Foo "some text"
#>

function Get-NamedProcess {
    [CmdletBinding()]
    param (
        [string]$Name,
        [string]$Foo
    )
    
    Write-Host $Foo

    Get-Process -Name $Name
}

#Cmdlet's laden: dot-sourcing . .\filename.ps1

