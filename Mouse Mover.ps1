
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
  $Positon = [System.Windows.Forms.Cursor]::Position
  #$x = ($pos.X % 500) + 1
  #$y = ($pos.Y % 500) + 1

  $x = $Positon.X + 1
  $y = $Positon.Y + 1
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
  
  $WShell = New-Object -com "Wscript.Shell"
  for ($i = 0; $i -lt $minutes; $i++) {
  #Start-Sleep -Seconds 60
  $myshell.sendkeys(".")
}

  
  
  $date = Get-Date
  Write-Output "   $date - Mouse is now in positon X: $X | Y: $Y"

  Start-Sleep -Seconds 5
}
