& ([ScriptBlock]::Create((oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH\powerlevel10k_classic.omp.json") -join "`n"))
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
clear
fastfetch
