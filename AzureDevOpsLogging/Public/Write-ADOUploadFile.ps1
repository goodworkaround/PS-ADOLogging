<#
.SYNOPSIS
Upload user interested file as additional log information to the current timeline record. The file shall be available for download along with task logs.

.DESCRIPTION
Upload user interested file as additional log information to the current timeline record. The file shall be available for download along with task logs.

.PARAMETER Path
Path of the file to upload

.EXAMPLE
Write-ADOUploadFile "C:\path\to\file.ps1"
#>
function Write-ADOUploadFile {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true, Position = 0)]
        [string] $Path
    )

    $FullPath = Resolve-Path $Path -ErrorAction SilentlyContinue
    if($FullPath) {
        Write-Host "##vso[task.uploadfile]$FullPath"
    } else {
        Write-Error "Path not found: $Path"
    }
}