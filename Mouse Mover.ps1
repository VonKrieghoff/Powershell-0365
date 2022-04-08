
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
     /|         (\  |(       Mouse is Running 
    ^ \   /___\  /\_|        VonKrieghoff, Niex700 and HakedDrakula are Hiding 
       |__|   |__|

    "




Add-Type -AssemblyName System.Windows.Forms

while ($true)
{
  #Get position
  $Positon = [System.Windows.Forms.Cursor]::Position
  #Edit Position
  $x = $Positon.X + 1
  $y = $Positon.Y + 1
  #Send Mouse to new position
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
  #Write where is mouse
  $date = Get-Date
  
  
  Write-Progress -CurrentOperation "Waiting for new mouse position" ("   $date - Mouse is now in positon X: $X | Y: $Y")
  #Write-Host -NoNewline "   $date - Mouse is now in positon X: $X | Y: $Y"
  #Write-Output "   $date - Mouse is now in positon X: $X | Y: $Y"
  

  $WShell = New-Object -com "Wscript.Shell"
  $WShell.sendkeys("{SCROLLLOCK}")
  Start-Sleep -Milliseconds 100
  $WShell.sendkeys("{SCROLLLOCK}")
  #Start-Sleep -Seconds 240

  
  Start-Sleep -Seconds 5
}
