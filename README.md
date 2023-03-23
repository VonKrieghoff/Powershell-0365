# Powershell-0365
Powershell Scripts and that kind of stuff
@ MB


# Mouse Mover:
$ScriptFromGithHub = Invoke-WebRequest https://raw.githubusercontent.com/VonKrieghoff/Powershell-0365/main/Mouse%20Mover.ps1; Invoke-Expression $($ScriptFromGithHub.Content)

# Mouse Mover PLUS SETTING CHANGE (mouse move only and browser detect):
$ScriptFromGithHub = Invoke-WebRequest https://raw.githubusercontent.com/VonKrieghoff/Powershell-Garage/main/Mouse%20Mover%20plus%20setting%20change.ps1; Invoke-Expression $($ScriptFromGithHub.Content)


# Change Default Browser to Edge:
$ScriptFromGithHub = Invoke-WebRequest https://raw.githubusercontent.com/VonKrieghoff/Powershell-Garage/main/Change%20Default%20Browser%20to%20MS%20Edge.ps1; Invoke-Expression $($ScriptFromGithHub.Content)
