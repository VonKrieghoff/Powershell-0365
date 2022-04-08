
# Remotely Invoke:
# $ScriptFromGithHub = Invoke-WebRequest https://raw.githubusercontent.com/VonKrieghoff/Powershell-0365/main/Mouse%20Mover.ps1
# Invoke-Expression $($ScriptFromGithHub.Content)


# BEfore u will be able to execute, u need to chenge esecyuution policy to unrestrericted:
# Set-ExecutionPolicy unrestricted -Scope currentuser
# Set back:
# Set-ExecutionPolicy restricted -Scope currentuser




cls
Write-Output "
          __     __
         /  \~~~/  \
   ,----(     ..    )
  /      \__     __/
 /|         (\  |(           Mouse Running 
^ \   /___\  /\_|        VonKrieghoff is Hiding 
   |__|   |__|

"




Add-Type -AssemblyName System.Windows.Forms

while ($true)
{
  $Positon = [System.Windows.Forms.Cursor]::Position
  #$x = ($pos.X % 500) + 1
  #$y = ($pos.Y % 500) + 1

  $x = $Positon.X + 1
  $y = $Positon.Y + 1
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
  Write-Output "Mouse is now at positon X: $X | Y: $Y"

  Start-Sleep -Seconds 10
}