
# Remotely Invoke:
# $ScriptFromGithHub = Invoke-WebRequest https://raw.githubusercontent.com/VonKrieghoff/Powershell-0365/main/Mouse%20Mover.ps1
# Invoke-Expression $($ScriptFromGithHub.Content)
# $ScriptFromGithHub = Invoke-WebRequest https://raw.githubusercontent.com/VonKrieghoff/Powershell-0365/main/Mouse%20Mover.ps1; Invoke-Expression $($ScriptFromGithHub.Content)

# Known issues:
# - On Linux Nano editor it opens when triggers SCROLLLOCK key



cls
    Write-Output "










              __     __
             /  \~~~/  \
       ,----(     ..    )
      /      \__     __/
     /|         (\  |(       Mouse is Running 
    ^ \   /___\  /\_|        I am Hiding 
       |__|   |__|           https://github.com/VonKrieghoff/

    "




Add-Type -AssemblyName System.Windows.Forms

while ($true)
{
  
# Change Settings
# Set default Browser Edge
#Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\Shell\Associations\UrlAssociations\https\UserChoice' -Name ProgId -Value 'MSEdgeHTM'
#Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice' -Name ProgId -Value 'MSEdgeHTM'
  
 
# Set which one slould be default browser
$SetAsDefaultBrowser = "MSEdgeHTM"
#$SetAsDefaultBrowser = MSEdgeHTM

# Get default browser that we have at this moment
$HTTPBrowser = (Get-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice).ProgId
$HTTPsBrowser = (Get-ItemProperty -Path Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\https\UserChoice).ProgId
Write-Progress -CurrentOperation "Default Browser is" (" $HTTPBrowser")
# If default browser is not what we need then if in loop will change that.
if($HTTPBrowser -ne $SetAsDefaultBrowser)
{
 #Set as Default Browser
 #Write-Output $HTTPBrowser
 Write-Progress -CurrentOperation "Changing default browser to" (" $SetAsDefaultBrowser")
 #Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice' -Name ProgId -Value $SetAsDefaultBrowser
}
# else {
#Write-Output "DEfault HTTP browser already is $HTTPBrowser" }


if($HTTPSBrowser -ne $SetAsDefaultBrowser)
{
 #Set as Default Browser
 Write-Output $HTTPBrowser
 #Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\Shell\Associations\UrlAssociations\https\UserChoice' -Name ProgId -Value $SetAsDefaultBrowser
}
#else {
#Write-Output "DEfault HTTPS browser already is $HTTPSBrowser" }


 
  
  # Waiting 5s and doing everything all over.  
  Start-Sleep -Seconds 5
}
