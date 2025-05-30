#
# Module manifest for module 'GoodWorkaroundHelpers'
#

@{

    # Script module or binary module file associated with this manifest.
    RootModule        = 'AzureDevOpsLogging.psm1'

    # Version number of this module.
    ModuleVersion = '1.1.1'

    # Supported PSEditions
    # CompatiblePSEditions = @()

    # ID used to uniquely identify this module
    GUID              = '5a728ea1-41db-4422-98b5-579bdac71f46'

    # Author of this module
    Author            = 'Marius Solbakken Mellum'

    # Company or vendor of this module
    CompanyName       = 'Good Workaround'

    # Copyright statement for this module
    Copyright         = '(c) Good Workaround'

    # Description of the functionality provided by this module
    Description       = 'A module for logging in Azure DevOps Pipelines'

    # Minimum version of the PowerShell engine required by this module
    PowerShellVersion = '5.1'

    # Name of the PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # ClrVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules = @()

    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()

    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    # NestedModules = @()

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @('Set-ADOVariable','Start-ADOGroup','Stop-ADOGroup','Write-ADOArtifact','Write-ADOError','Write-ADOUploadFile','Write-ADOWarning')

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport   = '*'

    # Variables to export from this module
    VariablesToExport = '*'

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport   = '*'

    # DSC resources to export from this module
    # DscResourcesToExport = @()

    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    # FileList = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData       = @{
        PSData = @{
            Tags       = @('DevOps','ADO','Logging', 'PSEdition_Desktop', 'PSEdition_Core', 'Windows', 'Linux', 'MacOS')
            ProjectUri = "https://github.com/goodworkaround/PS-ADOLogging"
        }
    }
}
