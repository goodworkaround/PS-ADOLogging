<#
.SYNOPSIS
Write a colored message in Azure DevOps pipeline logs.

.DESCRIPTION
Write a colored message in Azure DevOps pipeline logs using ANSI 4-bit color codes.

.PARAMETER Message
The message to write

.PARAMETER ForegroundColor
The foreground color of the message

.PARAMETER BackgroundColor
The background color of the message

.PARAMETER NoNewline
Do not add a newline at the end of the message

.EXAMPLE
Write-ADOMessage "This is a message" -ForegroundColor Green

.EXAMPLE
Write-ADOMessage "Important!" -ForegroundColor Yellow -BackgroundColor DarkRed

.EXAMPLE
Write-ADOMessage "Success: " -ForegroundColor Green -NoNewline
Write-ADOMessage "Operation completed" -ForegroundColor White
#>
function Write-ADOMessage {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true, Position = 0, ValueFromPipeline = $true)]
        [string]$Message,

        [Parameter(Mandatory = $false)]
        [ValidateSet('Black', 'DarkBlue', 'DarkGreen', 'DarkCyan', 'DarkRed', 'DarkMagenta', 'DarkYellow', 'Gray', 'DarkGray', 'Blue', 'Green', 'Cyan', 'Red', 'Magenta', 'Yellow', 'White')]
        [string]$ForegroundColor,

        [Parameter(Mandatory = $false)]
        [ValidateSet('Black', 'DarkBlue', 'DarkGreen', 'DarkCyan', 'DarkRed', 'DarkMagenta', 'DarkYellow', 'Gray', 'DarkGray', 'Blue', 'Green', 'Cyan', 'Red', 'Magenta', 'Yellow', 'White')]
        [string]$BackgroundColor,

        [Parameter(Mandatory = $false)]
        [switch]$NoNewline
    )

    if (-not $ForegroundColor -and -not $BackgroundColor) {
        if ($NoNewline) {
            [Console]::Write($Message)
        }
        else {
            Write-Output $Message
        }
        return
    }

    if ($ForegroundColor -and $BackgroundColor) {
        $ansiCode = "`e[$($script:ForegroundColorMap[$ForegroundColor]);$($script:BackgroundColorMap[$BackgroundColor])m"
    }
    elseif ($ForegroundColor) {
        $ansiCode = "`e[$($script:ForegroundColorMap[$ForegroundColor])m"
    }
    else {
        $ansiCode = "`e[$($script:BackgroundColorMap[$BackgroundColor])m"
    }

    if ($Message.Contains("`n")) {
        $output = ($Message -split "`n" | ForEach-Object { "$ansiCode$_`e[0m" }) -join "`n"
    }
    else {
        $output = "$ansiCode$Message`e[0m"
    }

    if ($NoNewline) {
        [Console]::Write($output)
    }
    else {
        Write-Output $output
    }
}
