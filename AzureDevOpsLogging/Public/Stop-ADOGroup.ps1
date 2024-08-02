<#
.SYNOPSIS
Ends a group in the Azure DevOps log.

.DESCRIPTION
Ends a group in the Azure DevOps log.

.EXAMPLE
Stop-ADOGroup
#>
function Stop-ADOGroup {
    [CmdletBinding()]
    param()

    Write-Host "##[endgroup]"
}