# *************************************************************************
#
# Script Name: BJSetup.ps1 (Setup script for the PowerShell Blackjack Game)
# Version:     4.0
# Author:      Jerry Lee Ford, Jr.
# Date:        March 2, 2014
# 
# Description: This PowerShell script creates a registry key for the 
#              PowerShell Blackjack game under the HKEY_CURRENT_USER hive
# 
# *************************************************************************


# Initialization section

$key = "PSBlackjack"  #Name of the registry key to be created
$value = "Credits"    #Name of the registry value to be created
$type = "string"      #Type of data stored in the new registry value
$data = "true"        #Data to be stored in the new registry value


# Functions and Filters section

function Create-KeyAndValue {

  New-Item -name $key  #Create a new registry key

  New-ItemProperty $key -name $value -Type $type -value $data

}


# Main Processing section

Set-Location hkcu:\

Create-KeyAndValue





















