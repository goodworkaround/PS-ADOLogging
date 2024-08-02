<#
.SYNOPSIS
Sets a variable in the variable service of taskcontext. The first task can set a variable, and following tasks are able to use the variable. The variable is exposed to the following tasks as an environment variable.

.DESCRIPTION
Sets a variable in the variable service of taskcontext. The first task can set a variable, and following tasks are able to use the variable. The variable is exposed to the following tasks as an environment variable.

.PARAMETER Name
The name of the variable

.PARAMETER Value
The value of the variable

.PARAMETER IsSecret
When issecret is set to true, the value of the variable will be saved as secret and masked out from log. Secret variables aren't passed into tasks as environment variables and must instead be passed as inputs.

.PARAMETER IsOutput
When isoutput is set to true the syntax to reference the set variable varies based on whether you are accessing that variable in the same job, a future job, or a future stage. Additionally, if isoutput is set to false the syntax for using that variable within the same job is distinct.

.PARAMETER IsReadOnly
When isreadonly is set to true, the variable cannot be changed by subsequent steps in the same job.

.EXAMPLE
Set-ADOVariable MyVar MyValue

.EXAMPLE
Set-ADOVariable MyVar MyValue -IsSecret

.EXAMPLE
Set-ADOVariable MyVar MyValue -IsOutput -IsReadOnly
#>
function Set-ADOVariable {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true, Position = 0)]
        [string] $Name,

        [Parameter(Mandatory = $true, Position = 1)]
        [string] $Value,

        [Parameter(Mandatory = $false)]
        [switch] $IsSecret,

        [Parameter(Mandatory = $false)]
        [switch] $IsOutput,

        [Parameter(Mandatory = $false)]
        [switch] $IsReadOnly
    )

    $properties = New-Object System.Collections.ArrayList
    $properties.Add("variable=$Name") | Out-Null
    if($IsSecret.IsPresent) { $properties.Add("issecret=true") | Out-Null }
    if($IsOutput.IsPresent) { $properties.Add("isoutput=true") | Out-Null }
    if($IsReadOnly.IsPresent) { $properties.Add("isreadonly=true") | Out-Null }
    
    Write-Host "##vso[task.setvariable $($properties -join ";")]$Value"
}