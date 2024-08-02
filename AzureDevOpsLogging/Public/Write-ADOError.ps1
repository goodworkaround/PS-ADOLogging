<#
.SYNOPSIS
Log an error in Azure DevOps pipeline.

.DESCRIPTION
Log an error in Azure DevOps pipeline.

.PARAMETER Message
The error message

.PARAMETER SourcePath
The path to the source file that caused the error

.PARAMETER LineNumber
The line number in the source file that caused the warning

.PARAMETER ColumnNumber
The column number in the source file that caused the error

.PARAMETER Code
The code of the error

.EXAMPLE
Write-ADOError "This is an error"

.EXAMPLE
Write-ADOError "This is an error" -SourcePath "C:\path\to\file.ps1" -LineNumber 42 -ColumnNumber 42 -Code "W001"
#>
function Write-ADOError {
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

    $properties = "type=error",
    ($SourcePath ? "sourcepath=$SourcePath" : $null),
    ($LineNumber -ne -1 ? "linenumber=$LineNumber" : $null),
    ($ColumnNumber -ne -1 ? "columnnumber=$ColumnNumber" : $null),
    ($Code ? "code=$Code"  : $null) |
    Where-Object {$_}
    
    Write-Host "##vso[task.logissue $($properties -join ";")]$Message"
}