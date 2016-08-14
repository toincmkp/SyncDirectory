# *************************************************************************
#
# Script Name: PrintWizard.ps1
# Version:     4.0
# Author:      Jerry Lee Ford, Jr.
# Date:        March 1, 2014
# 
# Description: This PowerShell script is designed to assist the user in 
#              resolving common printing problems.
# 
# *************************************************************************


# Initialization section

$response = ""  #Stores user input


# Functions and Filters section

function Display-ServiceStatus {
  Get-Service | Where-Object {$_.Name -eq "Spooler"}
}

function Display-Thanks {
  Clear-Host
  Write-Host "`nThank you for using the Print Wizard."
  exit
}

function Contact-HelpDesk {
  Clear-Host
  Write-Host "`nContact the Help Desk for additional assistance."
  exit
}


# Main Processing section

#Step 1 - Display the status of the Spooler service

Clear-Host

Write-Host "`nPRINT WIZARD`n"
Write-Host "The current status of the printer spooler service, which is"
Write-Host "responsible for managing the printing process, is: `n"

Display-ServiceStatus

Write-Host "`n`nA status of `"Running`" generally indicates that the"
Write-Host "spooler is operating correctly and the problem lies elsewhere."

$response = Read-Host "`n`nDoes this solve your problem? (Y/N)"

if ($response -eq "Y") {
  Display-Thanks
}
else {  #Step 2 - Check the paper supply
  Clear-Host
  Write-Host "`nDoes your printer have paper in it? If not, add new paper"
  Write-Host "and see if this fixes the problem."

  $response = Read-Host "`n`nDoes this solve your problem? (Y/N)"

  if ($response -eq "Y") {
    Display-Thanks
  }
  else {  #Step 3 - Restart the Spooler service
    Clear-Host
    Write-Host "`nSometimes stopping and starting the `"spooler`" service"
    Write-Host "will fix printing problems."
    $response = Read-Host "`nRestart the service? (Y/N)"
    if ($response -eq "Y") {
      Restart-service "Spooler"
      Clear-Host
      Write-Host "`nThe current status of the printer spooler service is:"`
                 "`n`n"

      Display-ServiceStatus
    }
    else {
      Contact-HelpDesk
    }
    $response = Read-Host "`n`nDoes this solve your problem? (Y/N)"
    if ($response -eq "N") {
      Contact-HelpDesk
    }
    else {
      Display-Thanks
    }
  }
}


















