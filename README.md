# Documentation for module AzureDevOpsLogging

A module for logging in Azure DevOps Pipelines

| Metadata | Information |
| --- | --- |
| Version | 1.1.1 |
| Author | Marius Solbakken Mellum |
| Company name | Good Workaround |
| PowerShell version | 5.1 |

## Set-ADOVariable

### SYNOPSIS
Sets a variable in the variable service of taskcontext.
The first task can set a variable, and following tasks are able to use the variable.
The variable is exposed to the following tasks as an environment variable.

### SYNTAX

```
Set-ADOVariable [-Name] <String> [-Value] <String> [-IsSecret] [-IsOutput] [-IsReadOnly]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### DESCRIPTION
Sets a variable in the variable service of taskcontext.
The first task can set a variable, and following tasks are able to use the variable.
The variable is exposed to the following tasks as an environment variable.

### EXAMPLES

#### EXAMPLE 1
```
Set-ADOVariable MyVar MyValue
```

#### EXAMPLE 2
```
Set-ADOVariable MyVar MyValue -IsSecret
```

#### EXAMPLE 3
```
Set-ADOVariable MyVar MyValue -IsOutput -IsReadOnly
```

### PARAMETERS

#### -Name
The name of the variable

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### -Value
The value of the variable

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### -IsSecret
When issecret is set to true, the value of the variable will be saved as secret and masked out from log.
Secret variables aren't passed into tasks as environment variables and must instead be passed as inputs.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

#### -IsOutput
When isoutput is set to true the syntax to reference the set variable varies based on whether you are accessing that variable in the same job, a future job, or a future stage.
Additionally, if isoutput is set to false the syntax for using that variable within the same job is distinct.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

#### -IsReadOnly
When isreadonly is set to true, the variable cannot be changed by subsequent steps in the same job.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

#### -ProgressAction


```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

### INPUTS

### OUTPUTS

### NOTES

### RELATED LINKS
## Start-ADOGroup

### SYNOPSIS
Start a new group in the Azure DevOps log.

### SYNTAX

```
Start-ADOGroup [-Name] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### DESCRIPTION
Start a new group in the Azure DevOps log.

### EXAMPLES

#### EXAMPLE 1
```
Start-ADOGroup 'My Group'
```

### PARAMETERS

#### -Name
The name of the group.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### -ProgressAction


```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

### INPUTS

### OUTPUTS

### NOTES

### RELATED LINKS
## Stop-ADOGroup

### SYNOPSIS
Ends a group in the Azure DevOps log.

### SYNTAX

```
Stop-ADOGroup [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### DESCRIPTION
Ends a group in the Azure DevOps log.

### EXAMPLES

#### EXAMPLE 1
```
Stop-ADOGroup
```

### PARAMETERS

#### -ProgressAction


```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

### INPUTS

### OUTPUTS

### NOTES

### RELATED LINKS
## Write-ADOArtifact

### SYNOPSIS
Upload a local file into a file container folder, and optionally publish an artifact as artifactname.

### SYNTAX

```
Write-ADOArtifact [-ArtifactName] <String> [-Path] <String> [-ContainerFolder <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### DESCRIPTION
Upload a local file into a file container folder, and optionally publish an artifact as artifactname.

### EXAMPLES

#### EXAMPLE 1
```
Write-ADOArtifact MyArtifact "C:\path\to\file.ps1"
```

### PARAMETERS

#### -ArtifactName
The name of the artifact

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### -Path
Path of the file to upload as an artifact

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### -ContainerFolder
The container in the artifact to upload the file to

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### -ProgressAction


```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

### INPUTS

### OUTPUTS

### NOTES

### RELATED LINKS
## Write-ADOError

### SYNOPSIS
Log an error in Azure DevOps pipeline.

### SYNTAX

```
Write-ADOError [-Message] <String> [-SourcePath <String>] [-LineNumber <Int32>] [-ColumnNumber <Int32>]
 [-Code <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### DESCRIPTION
Log an error in Azure DevOps pipeline.

### EXAMPLES

#### EXAMPLE 1
```
Write-ADOError "This is an error"
```

#### EXAMPLE 2
```
Write-ADOError "This is an error" -SourcePath "C:\path\to\file.ps1" -LineNumber 42 -ColumnNumber 42 -Code "W001"
```

### PARAMETERS

#### -Message
The error message

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### -SourcePath
The path to the source file that caused the error

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### -LineNumber
The line number in the source file that caused the warning

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: -1
Accept pipeline input: False
Accept wildcard characters: False
```

#### -ColumnNumber
The column number in the source file that caused the error

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: -1
Accept pipeline input: False
Accept wildcard characters: False
```

#### -Code
The code of the error

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### -ProgressAction


```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

### INPUTS

### OUTPUTS

### NOTES

### RELATED LINKS
## Write-ADOUploadFile

### SYNOPSIS
Upload user interested file as additional log information to the current timeline record.
The file shall be available for download along with task logs.

### SYNTAX

```
Write-ADOUploadFile [-Path] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### DESCRIPTION
Upload user interested file as additional log information to the current timeline record.
The file shall be available for download along with task logs.

### EXAMPLES

#### EXAMPLE 1
```
Write-ADOUploadFile "C:\path\to\file.ps1"
```

### PARAMETERS

#### -Path
Path of the file to upload

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### -ProgressAction


```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

### INPUTS

### OUTPUTS

### NOTES

### RELATED LINKS
## Write-ADOWarning

### SYNOPSIS
Log a warning in Azure DevOps pipeline.

### SYNTAX

```
Write-ADOWarning [-Message] <String> [-SourcePath <String>] [-LineNumber <Int32>] [-ColumnNumber <Int32>]
 [-Code <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### DESCRIPTION
Log a warning in Azure DevOps pipeline.

### EXAMPLES

#### EXAMPLE 1
```
Write-ADOWarning "This is a warning"
```

#### EXAMPLE 2
```
Write-ADOWarning "This is a warning" -SourcePath "C:\path\to\file.ps1" -LineNumber 42 -ColumnNumber 42 -Code "W001"
```

### PARAMETERS

#### -Message
The warning message

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### -SourcePath
The path to the source file that caused the warning

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### -LineNumber
The line number in the source file that caused the warning

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: -1
Accept pipeline input: False
Accept wildcard characters: False
```

#### -ColumnNumber
The column number in the source file that caused the warning

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: -1
Accept pipeline input: False
Accept wildcard characters: False
```

#### -Code
The code of the warning

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### -ProgressAction


```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

#### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

### INPUTS

### OUTPUTS

### NOTES

### RELATED LINKS
