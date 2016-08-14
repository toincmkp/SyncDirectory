# *************************************************************************
#
# Script Name: GuessMyNumber.ps1 (The Guess My Number Game)
# Version:     4.0
# Author:      Jerry Lee Ford, Jr.
# Date:        February 1, 2014
# 
# Description: This PowerShell script challenges the player to attempt
#              to guess a randomly generated number in the range of 
#              1 to 100 in as few guesses as possible.
#
# *************************************************************************


#Clear the Windows command console screen
Clear-Host

#Define variables used in this script
$number = 0       #Keeps track of the game's secret number
$noOfGuesses = 0  #Keeps track of the number of guesses made
$playGame = "Yes" #Controls when to quit the game
$status = "Play"  #Controls the current round of play
$guess = 0        #Stores the player's guess
$reply = ""       #Stores the player's response when asked to play again

#Display the game's opening screen
Write-Host "`n`n`n`n`t     W E L C O M E   T O   T H E   G U E S S   M Y"
Write-Host "`n`n`n`t`t`tN U M B E R   G A M E"
Write-Host "`n`n`n`t`t`tBy Jerry Lee Ford, Jr."
Write-Host "`n`n`n`n`n`n`n`n`n`n Press Enter to continue."

#Pause the game until the player presses the Enter key
Read-Host

#Loop until the player decides to quit the game
while ($playGame -ne "No") {

  #Generate the game's random number (between 1 - 100)
  $number = Get-Random �minimum 1 �maximum 101

  #Clear the Windows command console screen
  Clear-Host

  #Loop until the player guesses the secret number
  while ($status -ne "Stop") {

    #Prompt the player to guess a number
    while ($guess -eq "") {

      Clear-Host  #Clear the Windows command console screen

      Write-Host

      #Collect the player's guess
      $guess = Read-Host " Enter a number between 1 and 100"

    }

    #Keep track of the number of guesses made so far
    $noOfGuesses++

    if ($guess -lt $number) {  #The player's guess was too low

      Clear-Host  #Clear the Windows command console screen
      Write-Host "`n Sorry. Your guess was too low. Press Enter to" `
        "guess again."
      $guess = ""  #Reset the player's guess
      Read-Host  #Pause the game until the player presses the Enter key

    }
    elseif ($guess -gt $number) {  #The player's guess was to high

      Clear-Host  #Clear the Windows command console screen
      Write-Host "`n Sorry. Your guess was too high. Press Enter to" `
        "guess again."
      $guess = ""  #Reset the player's guess
      Read-Host  #Pause the game until the player presses the Enter key

    }
    else {  #The player has guessed the game's secret number

      Clear-Host  #Clear the Windows command console screen
      Write-Host "`n Congratulations. You guessed my number! Press Enter" `
        "to continue."
      $status = "Stop"  #Reset the player's guess
      Read-Host  #Pause the game until the player presses the Enter key

    }

  }

  #Clear the Windows command console screen
  Clear-Host

  #Display the game's opening screen
  Write-Host "`n Game Statistics"
  Write-Host " ------------------------------------------------------------"
  Write-Host "`n The secret number was: $number."
  Write-Host "`n You guessed it in $noOfGuesses guesses.`n"
  Write-Host " ------------------------------------------------------------"
  Write-Host "`n`n`n`n`n`n`n`n`n`n`n`n`n`n Press Enter to continue."

  #Pause the game until the player presses the Enter key
  Read-Host

  #Clear the Windows command console screen
  Clear-Host

  $reply = ""  #Stores the player's response when asked to play again

  #Prompt the player to play another round
  while ($reply -eq "") {

    Clear-Host  #Clear the Windows command console screen

    Write-Host

    #Collect the player's answer
    $reply = Read-Host " Would you like to play again? (Y/N) "

     
    #Validate player input, allowing only Y and N as acceptable responses
    if (($reply -ne "Y") -and ($reply -ne "N")) {

      $reply = ""  #Reset the variable to its default value

    }

  }

  #The player has elected to play again
  if ($reply -eq "Y") {

    #Reset variables to their default values
    $number = 0
    $noOfGuesses = 0
    $status = "Play"
    $guess = 0

  }
  else {   #The player has decided to quit playing

    $playGame = "No"  #Modify variable indicating that it is time to 
                      #terminate game play

  }  

}

#Clear the Windows command console screen
Clear-Host




















