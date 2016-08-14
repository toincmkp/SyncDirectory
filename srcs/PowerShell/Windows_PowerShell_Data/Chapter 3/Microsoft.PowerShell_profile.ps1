# *************************************************************************
#
# Script Name: Microsoft.PowerShell_Profile.ps1 
# Version:     4.0
# Author:      Jerry Lee Ford, Jr.
# Date:        January 6, 2014
# 
# Description: This PowerShell script contains commands that customize
#              the Windows PowerShell execution environment.
#
# *************************************************************************

#Create a custom alias command
Set-Alias ds Write-Host

#Clear the Windows command console screen
Clear-Host
 
#Display custom greeting

ds
ds "This computer and network are private. By using this computer you"
ds "agree to all terms outlined in the company's security policy."
ds "Failure to comply with these policies may result in criminal"
ds "prosecution."
ds
