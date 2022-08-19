& ([ScriptBlock]::Create((oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\agnoster.omp.json" --print) -join "`n"))
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
clear
winfetch
