<#
.SYNOPSIS
Log a warning in Azure DevOps pipeline.

.DESCRIPTION
Log a warning in Azure DevOps pipeline.

.PARAMETER Message
The warning message

.PARAMETER SourcePath
The path to the source file that caused the warning

.PARAMETER LineNumber
The line number in the source file that caused the warning

.PARAMETER ColumnNumber
The column number in the source file that caused the warning

.PARAMETER Code
The code of the warning

.EXAMPLE
Write-ADOWarning "This is a warning"

.EXAMPLE
Write-ADOWarning "This is a warning" -SourcePath "C:\path\to\file.ps1" -LineNumber 42 -ColumnNumber 42 -Code "W001"
#>
function Write-ADOWarning {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true, Position = 0)]
        [string]$Message,

        [Parameter(Mandatory = $false)]
        [string] $SourcePath,

        [Parameter(Mandatory = $false)]
        [int] $LineNumber = -1,
        [Parameter(Mandatory = $false)]
        [int] $ColumnNumber = -1,

        [Parameter(Mandatory = $false)]
        [string] $Code
    )

    $properties = New-Object System.Collections.ArrayList
    $properties.Add("type=warning") | Out-Null
    if($SourcePath) { $properties.Add("sourcepath=$SourcePath") | Out-Null }
    if($LineNumber -ne -1) { $properties.Add("linenumber=$LineNumber") | Out-Null }
    if($ColumnNumber -ne -1) { $properties.Add("columnnumber=$ColumnNumber") | Out-Null }
    if($Code) { $properties.Add("code=$Code") | Out-Null }
    
    Write-Host "##vso[task.logissue $($properties -join ";")]$Message"
}