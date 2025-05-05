# Useful powershell commands

# Get history
(Get-PSReadlineOption).HistorySavePath

# Custom prompt
function prompt
{
  Write-Host ("PS:") -nonewline -foregroundcolor Gray
  Write-Host ($(Split-Path -Path (Get-Location) -Leaf)) -nonewline -foregroundcolor DarkBlue
  Write-Host ("$") -nonewline -foregroundcolor Gray
  return " "
}

#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
If (Test-Path "C:\Users\willi\miniforge3\Scripts\conda.exe") {
    (& "C:\Users\willi\miniforge3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
}
#endregion

# Aliases
function ca {
    param (
        [Parameter(Mandatory=$true)]
        [string]$envName
    )
    & conda activate $envName
}
New-Alias which get-command
New-Alias -Name unzip -Value Expand-Archive -Force
