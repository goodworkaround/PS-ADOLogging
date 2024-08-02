<#
.SYNOPSIS
Upload a local file into a file container folder, and optionally publish an artifact as artifactname.

.DESCRIPTION
Upload a local file into a file container folder, and optionally publish an artifact as artifactname.

.PARAMETER Path
Path of the file to upload as an artifact

.PARAMETER ContainerFolder
The container in the artifact to upload the file to

.PARAMETER ArtifactName
The name of the artifact

.EXAMPLE
Write-ADOArtifact MyArtifact "C:\path\to\file.ps1"
#>
function Write-ADOArtifact {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true, Position = 0)]
        [string] $ArtifactName,

        [Parameter(Mandatory = $true, Position = 1)]
        [string] $Path,

        [Parameter(Mandatory = $false)]
        [string] $ContainerFolder
    )

    $properties = New-Object System.Collections.ArrayList
    if($ContainerFolder) { $properties.Add("containerfolder=$ContainerFolder") | Out-Null }
    if($ArtifactName) { $properties.Add("artifactname=$ArtifactName") | Out-Null }
    
    $FullPath = Resolve-Path $Path -ErrorAction SilentlyContinue
    if($FullPath) {
        Write-Host "##vso[artifact.upload $($properties -join ";")]$FullPath"
    } else {
        Write-Error "Path not found: $Path"
    }
}