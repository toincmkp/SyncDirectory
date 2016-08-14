# *************************************************************************
#
# Script Name: RockPaperScissors.ps1 (The Rock, Paper, Scissors Game)
# Version:     4.0
# Author:      Jerry Lee Ford, Jr.
# Date:        February 2, 2014
# 
# Description: This PowerShell script challenges the player to beat the 
#              computer in a game of Rock, Paper, Scissors
#
# *************************************************************************


#Clear the Windows command console screen
Clear-Host

#Define variables used in this script
$playGame = "True" #This variable controls gameplay
$number = 0        #This variable stores the numeric version of the 
                   #computer's move
$guess = 0         #This variable stores the numeric version of the 
                   #player's move
$playerMove = ""   #This variable stores the string version of the 
                   #player's move
$computerMove = "" #This variable stores the string version of the 
                   #computer's move
$noPlayed = 0      #This variable keeps track of the number of games
                   #played
$noWon = 0         #This variable keeps track of the number of games won
$noLost = 0        #This variable keeps track of the number of games lost
$noTied = 0        #This variable keeps track of the number of games tied

#Display the game's opening screen
Write-Host "`n`n`n`n`t`t`tW E L C O M E   T O   T H E"
Write-Host "`n`n`n`t     R O C K,   P A P E R,   S C I S S O R S   G A M E"
Write-Host "`n`n`n`t`t`t    By Jerry Lee Ford, Jr."
Write-Host "`n`n`n`n`n`n`n`n`n`n Press Enter to continue."

#Pause the game until the player presses the Enter key
Read-Host

#Loop until the player guesses the secret number
while ($playGame -ne "False") {

  #Generate the game's random number (between 1 - 3)
  #Value assignment: 1 = Rock, 2 = Paper and 3 = Scissors
  $number = Get-Random -minimum 1 -maximum 4

  #Translate the computer's move to English 
  if ($number -eq 1) {$computerMove = "Rock"}
  if ($number -eq 2) {$computerMove = "Paper"}
  if ($number -eq 3) {$computerMove = "Scissors"}

  #Prompt the player to guess a number
  while ($guess -eq "") {

    Clear-Host  #Clear the Windows command console screen

    #Display instructions
    Write-Host "`n`n"
    Write-Host " Enter one of the following options:`n"
    Write-Host " -----------------------------------`n"
    Write-Host " R = Rock"
    Write-Host " P = Paper"
    Write-Host " S = Scissors"
    Write-Host " Q = Quit`n"
    Write-Host " -----------------------------------`n`n`n`n`n`n`n`n`n`n"

    #Collect the player's guess
    $guess = Read-Host " Make a move"

  }

  #Validate the player move
  if ($guess -eq "Q") {  #Player has decided to quit playing

    Clear-Host  #Clear the Windows command console screen

    Write-Host "`n`n"
    Write-Host " Game over. Thanks for playing Rock, Paper, Scissors."
    Write-Host "`n`n`n`n`n`n`n`n`n`n`n`n`n`n`n`n`n`n"
    Write-host " Press Enter to view game stats and quit the game."

    Read-Host  #Pause while the player reads the screen

    $playGame = "False"  #Set variable to false indicating the game is over

    continue  #Skip the remainder of the loop

  }
  elseif (($guess -ne "R") -and ($guess -ne "P") -and ($guess -ne "S")) {

    Clear-Host  #Clear the Windows command console screen

    Write-Host "`n`n`n Invalid input. Please try again."

    Read-Host  #Pause while the player reads the screen

    $guess = ""  #Clear out the player's previous guess

    continue  #Skip the remainder of the loop

  }

  #Translate the player's move to English 
  if ($guess -eq "R") {$playerMove = "Rock"}
  if ($guess -eq "P") {$playerMove = "Paper"}
  if ($guess -eq "S") {$playerMove = "Scissors"}

  Clear-Host  #Clear the Windows command console screen

  Write-Host " `n`n`n Results:`n"
  Write-Host " -----------------------------------`n"
  Write-Host " The computer picked: $computerMove`n"
  Write-Host " You picked: $playerMove`n"
  Write-Host " -----------------------------------`n`n"

  $noPlayed += 1  #Increment count by 1

  switch ($computerMove) 
  {

    "Rock" {  #The computer picked rock
 
      if ($playerMove -eq "Rock") {
        $noTied += 1  #Increment count by 1
        Write-Host " You tie!"
      }

      if ($playerMove -eq "Paper") {
        $noWon += 1  #Increment count by 1
        Write-Host " You win!"
      }

      if ($playerMove -eq "Scissors") {
        $noLost += 1  #Increment count by 1
        Write-Host " You lose!"
      }

    }

    "Paper" { #The computer picked paper

      if ($playerMove -eq "Rock") {
        $noLost += 1  #Increment count by 1
        Write-Host " You lose!"
      }

      if ($playerMove -eq "Paper") {
        $noTied += 1  #Increment count by 1
        Write-Host " You tie!"
      }

      if ($playerMove -eq "Scissors") {
        $noWon += 1  #Increment count by 1
        Write-Host " You win!"
      }

    }

    "Scissors" { #The computer picked scissors

      if ($playerMove -eq "Rock") {
        $noWon += 1  #Increment count by 1
        Write-Host " You win!"
      }

      if ($playerMove -eq "Paper") {
        $noLost += 1  #Increment count by 1
        Write-Host " You lose!"
      }

      if ($playerMove -eq "Scissors") {
        $noTied += 1  #Increment count by 1
        Write-Host " You tie!"
      }

    }

  }   

  #Pause the game until the player presses the Enter key
  Read-Host

  #Reset variables to prepare for a new round of play
  $number = 0         #Reset the computer's guess back to zero
  $guess = 0          #Reset the numeric version of the player's guess 
                      #back to zero
  $playerMove = ""    #Reset the string version of the player's guess back
                      #to a empty string
  $computerMove = ""  #Reset the string version of the player's guess 
                      #back to a empty string

}

#Clear the Windows command console screen
Clear-Host

#Display the game statistics
Write-Host "`n`n`n Game Statistics`n"
Write-Host " -----------------------------------`n"
Write-Host "`n Number of games played: $noPlayed"
Write-Host "`n Number of games won:    $noWon"
Write-Host "`n Number of games lost:   $noLost"
Write-Host "`n Number of games tied:   $noTied`n"
Write-Host " -----------------------------------"
Write-Host "`n`n`n`n`n`n`n Press Enter to continue."

#Pause the game until the player presses the Enter key
Read-Host

#Clear the Windows command console screen
Clear-Host



















