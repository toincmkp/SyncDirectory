# *************************************************************************
#
# Script Name: FortuneTeller.ps1 (PowerShell Fortune Teller)
# Version:     4.0
# Author:      Jerry Lee Ford, Jr.
# Date:        January 10, 2014
# 
# Description: This PowerShell script provides randomly answer to player
#              questions.
#
# *************************************************************************


#Clear the Windows command console screen
Clear-Host

#Define the variables used in this script to collect player inputs
$question = ""   #This variables will store the player's question
$status = "Play"  #This variable will be used to control game termination
$answer = 0  #This variable stores a randomly genrated number
$time = (Get-Date).Hour  #This variable stores the current hour of the day


#Display the game's opening screen
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host "               W E L C O M E   T O   T H E   W I N D O W S"
Write-Host
Write-Host
Write-Host
Write-Host "            P O W E R S H E L L   F O R T U N E   T E L L E R"
Write-Host
Write-Host
Write-Host   
Write-Host "                          By Jerry Lee Ford, Jr."
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host " Press Enter to continue."

#Pause script execution and wait for the player to press the Enter key
Read-Host


#Clear the Windows command console screen
Clear-Host  

#Provide the player with instructions
Write-Host
Write-Host " The fortune teller is a very busy and impatient mystic. Make"
Write-Host 
Write-Host " your questions brief and simple and only expect to receive"
Write-Host
Write-host " Yes / No styled answers."   
Write-Host 
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host " Press Enter to continue."

#Pause script execution and wait for the player to press the Enter key
Read-Host

#Continue game play until the player decides to stop
while ($status -ne "Stop") {

  #Ask the player the first question
  while ($question -eq ""){

    Clear-Host  #Clear the Windows command console screen

    Write-Host

    $question = read-host " What is your question? "
 
  }

  $question = ""  #Reset variable to a empty string

  #Retrieve a random number between 1 and 4
  $answer = Get-Random -minimum 1 -maximum 5

  #Select an answer based on the time and the random number
  #If it is the afternoon the fortune teller will be a little cranky
  if ($time -gt 12) {
    Write-Host
    if ($answer -eq 1) { " Grrrr. The answer is no!" }
    if ($answer -eq 2) { " Grrrr. The answer is never" }
    if ($answer -eq 3) { " Grrrr. The answer is unclear!" }
    if ($answer -eq 4) { " Grrrr. The answer is yes!" }
  }
  #If it is morning the fortune teller will be in a good mood
  else {
    Write-Host
    if ($answer -eq 1) { " Ah. The answer is yes!" }
    if ($answer -eq 2) { " Ah. The answer is Always" }
    if ($answer -eq 3) { " Ah. The answer is uncertain!" }
    if ($answer -eq 4) { " Ah. The answer is no!" }
  }


  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host
  Write-Host " Press Enter to continue."

  #Pause script execution and wait for the player to press the Enter key
  Read-Host

  #Clear the Windows command console screen
  Clear-host

  Write-Host

  #Prompt the player to continue or quit
  $reply = read-host " Press Enter to ask another question or type Q to quit."
  if ($reply -eq "q") { $status = "Stop" }

}


#Clear the Windows command console screen
Clear-Host

#Provide the player with instructions
Write-Host 
Write-Host " Very well then. Please return again to get all your questions"
Write-Host " answered." 
Write-Host
Write-Host 
Write-Host
Write-Host
Write-Host
Write-Host 
Write-Host
Write-Host
Write-Host  
Write-Host 
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host 
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host " Press Enter to continue."

#Pause script execution and wait for the player to press the Enter key
Read-Host

#Clear the Windows command console screen
Clear-Host  
