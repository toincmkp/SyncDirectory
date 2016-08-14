# *************************************************************************
#
# Script Name: GameConsole.ps1 (The PowerShell Game Console)
# Version:     4.0
# Author:      Jerry Lee Ford, Jr.
# Date:        March 5, 2014
# 
# Description: This PowerShell script provides a listing of PowerShell
#              game scripts and allows the player to play any game by 
#              entering its menu number.
# 
# *************************************************************************


# Initialization section

$menuList = @()  #Stores an array containing information about script games
$playAgain = "True"  #Controls the execution of the loop that manages game
                     #execution

# Functions and Filters section

#This function gets the player's permission to begin the game
function Get-GameListing {

  $gameList = @()  #Stores and array containing a list of PowerShell scripts
  $i = 0  #Used to set the index value of the array when adding elements to it

  Clear-Host  #Clear the screen
  Write-Host  #Display a game console header
  Write-Host " --------------------------------------------------------------"
  Write-Host " Windows PowerShell Game Console" -foregroundColor darkred
  Write-Host " --------------------------------------------------------------"

  Set-Location C:\MyScripts  #Specify the location of the game scripts

  #Load an array with a list of all the PowerShell scripts in the specified folder
  $gameList = Get-ChildItem . *.ps1  # | ForEach-Object -process {$i++; $gameList[$i] = $_.Name }
  $gameList  #Return the contents of the array to the calling statement

}

#This function displays a menu listing of PowerShell games
function Write-MenuList {

  param($list)  #The list of games to be displayed is passed as an array
  $Counter = 0  #Used to number each menu item

  Write-Host ""

  ForEach ($i in $list) {  #Iterate for each script stored in the array

    $counter++  #Increment the counter by 1

    if ($counter -lt 10) {  #Format the display of the first 9 scripts
      Write-Host " $counter.  $i" -foregroundColor blue
    }
    else {  #Format the display of all remaining scripts
      Write-Host " $counter. $i" -foregroundColor blue
    }

  }
 
  Write-Host "`n --------------------------------------------------------------"

}

function End-ScriptExecution {

  Clear-Host #Clear the screen

  Write-Host "`n Thank you for using the Windows PowerShell Game Console"

  Start-Sleep 3  #Pause the execution of the script for 3 seconds

  Clear-Host  #Clear the screen

}


# Main Processing section

$response = 0  #Stores player input

#Continue playing new games until the player decides to close the game console
while ($playAgain -eq "True") {

  #Call the function that generates an array containing a list of game scripts
  $menuList = Get-GameListing  

  #Call function that converts the contents of the array into a list of menu items
  Write-MenuList $menuList

  #Prompt the player to pick a game to play
  $response = Read-Host "`n Enter the menu number for a game or Q to quit"

  #Prepare to close the game console when the user decides to quit
  if ($response -eq "Q") {
    $playAgain = "False"  #Modify variable value in order to terminate the loop
    continue  #Repeat the loop
  }

  #Convert the player's input to a integer and then validate the player's input
  if ([int]$response -lt 1) {  Anything below 1 is not a valid menu number
    Clear-Host  #Clear the screen
    Write-Host "`n `a`aInvalid selection."
    Read-Host   #Pause the script until the player presses the Enter key
    continue    #Repeat the loop
  }

  if ([int]$response -gt $menuList.length) {
    Clear-Host  #Clear the screen
    Write-Host "`n `a`aInvalid selection."
    Read-Host   #Pause the script until the player presses the Enter key
    continue    #Repeat the loop
  }

  #Format a string representing the command that will execute the 
  #script selected by the user
  $game = "./" + $menuList[$response -1]

  Invoke-Expression $game  #Execute the selected game script  

  Clear-Host  #Clear the screen

}

End-ScriptExecution






















