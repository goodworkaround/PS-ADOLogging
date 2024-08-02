# Documentation for module AzureDevOpsLogging

A module for logging in Azure DevOps Pipelines

| Metadata | Information |
| --- | --- |
| Version | 0.0.1 |
| Author | Marius Solbakken Mellum |
| Company name | Good Workaround |
| PowerShell version | 5.1 |

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
