<#
.SYNOPSIS
Start a new group in the Azure DevOps log.

.DESCRIPTION
Start a new group in the Azure DevOps log.

.PARAMETER Name
The name of the group.

.EXAMPLE
Start-ADOGroup 'My Group'
#>
function Start-ADOGroup {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true, Position = 0)]
        [string]$Name
    )

    Write-Host "##[group]$Name"
}