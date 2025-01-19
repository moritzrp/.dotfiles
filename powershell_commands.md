# Powershell Commands

Notes about useful powershell commands to manage the dotfiles.

## Allow local scripts to be executed

`set-executionpolicy remotesigned`

## Get history

`cat (Get-PSReadlineOption).HistorySavePath`

## Open config

`Invoke-Item $profile`
