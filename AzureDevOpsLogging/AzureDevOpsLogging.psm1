# ANSI color code mappings for Write-ADOMessage
$script:ForegroundColorMap = @{
    'Black' = 30; 'DarkRed' = 31; 'DarkGreen' = 32; 'DarkYellow' = 33
    'DarkBlue' = 34; 'DarkMagenta' = 35; 'DarkCyan' = 36; 'Gray' = 37
    'DarkGray' = 90; 'Red' = 91; 'Green' = 92; 'Yellow' = 93
    'Blue' = 94; 'Magenta' = 95; 'Cyan' = 96; 'White' = 97
}

$script:BackgroundColorMap = @{
    'Black' = 40; 'DarkRed' = 41; 'DarkGreen' = 42; 'DarkYellow' = 43
    'DarkBlue' = 44; 'DarkMagenta' = 45; 'DarkCyan' = 46; 'Gray' = 47
    'DarkGray' = 100; 'Red' = 101; 'Green' = 102; 'Yellow' = 103
    'Blue' = 104; 'Magenta' = 105; 'Cyan' = 106; 'White' = 107
}

# Get public and private function definition files.
$Private = (Test-Path "$PSScriptRoot\Private") ? @( Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue ) : @()
$Public = @( Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue )

# Dot source the files in order to define all cmdlets
Foreach ($import in @($Public + $Private)) {
    Try {
        . $import.fullname
    }
    Catch {
        Write-Error -Message "Failed to import function $($import.fullname): $_"
    }
}

# Export all functions
Export-ModuleMember -Function $Public.Basename