# *************************************************************************
#
# Script Name: WWIITrivia.ps1 (The World War II Trivia Quiz)
# Version:     4.0
# Author:      Jerry Lee Ford, Jr.
# Date:        January 20, 2014
# 
# Description: This PowerShell script tests the player's knowledge of the
#              Second World War trivia through the administration of 
#              a computer quiz made up of 5 questions.
#
# *************************************************************************


#Clear the Windows command console screen
Clear-Host

#Define the variables used in this script to store player answers
$question1 = ""
$question2 = ""
$question3 = ""
$question4 = ""
$question5 = ""

#Define a variable to keep track of the number of correctly answered 
#quiz questions
$noCorrect = 0


#Display the game's opening screen
Write-Host "`n`n`n`n`t`t`t W E L C O M E    T O    T H E"
Write-Host "`n`n`n`n`t`t`t   W O R L D    W A R    I I"
Write-Host "`n`n`n`t`t`t    T R I V I A    Q U I Z"
Write-Host "`n`n`n`t`t`t    By Jerry Lee Ford, Jr."
Write-Host "`n`n`n`n`n Press Enter to continue."

#Pause script execution and wait for the player to press the Enter key
Read-Host


#Clear the Windows command console screen
Clear-Host  

#Provide the player with instructions
Write-Host "`n`n The World War II Trivia Quiz tests your knowledge of `n"
Write-Host " Second World War trivia. The quiz consists of five equally `n"
Write-Host " weighted multiple choice questions. At the end of the quiz `n"
Write-Host " your answers will be checked and you will be assigned a `n"
Write-Host " skill level, using the following scale. `n`n"
Write-Host " `t Score:  5 correct = Theater Commander"
Write-Host " `t`t 4 correct = General"
Write-Host " `t`t 3 correct = Colonel"
Write-Host " `t`t 2 correct = Major"
Write-Host " `t`t 1 correct = Captain" 
Write-Host " `t`t 0 correct = Private"

Write-Host "`n`n`n`n Press Enter to continue."

#Pause script execution and wait for the player to press the Enter key
Read-Host


#Ask the player the first question
while (($question1 -ne "a") -and ($question1 -ne "b") `
  -and ($question1 -ne "c") -and ($question1 -ne "d")) {

  Clear-Host  #Clear the Windows command console screen

  Write-Host
  Write-Host " What country ended World War II by dropping a nuclear bomb?"
  Write-Host
  Write-Host " A. Japan"
  Write-Host " B. England"
  Write-Host " C. America"
  Write-Host " D. Russia"
  Write-Host
  $question1 = Read-Host " Type the letter representing the correct answer" `
    "and press the Enter key"

}


#Clear the Windows command console screen
Clear-Host

#Ask the player the second question
while (($question2 -ne "a") -and ($question2 -ne "b") `
  -and ($question2 -ne "c") -and ($question2 -ne "d")) {

  Clear-Host  #Clear the Windows command console screen

  Write-Host
  Write-Host " Who was allied commander of the European theater in 1944/45?"
  Write-Host
  Write-Host " A. Patton"
  Write-Host " B. Eisenhower"
  Write-Host " C. Bradley"
  Write-Host " D. MacArthur"
  Write-Host
  $question2 = Read-Host " Type the letter representing the correct answer" `
    "and press the Enter key"

}


#Clear the Windows command console screen
Clear-Host

#Ask the player the third question
while (($question3 -ne "a") -and ($question3 -ne "b") `
  -and ($question3 -ne "c") -and ($question3 -ne "d")) {

  Clear-Host  #Clear the Windows command console screen

  Write-Host
  Write-Host " On whose side did Romania fight in World War II?"
  Write-Host
  Write-Host " A. Axis"
  Write-Host " B. Allied"
  Write-Host " C. Neither"
  Write-Host " D. Both"
  Write-Host
  $question3 = Read-Host " Type the letter representing the correct answer" `
    "and press the Enter key"

}


#Clear the Windows command console screen
Clear-Host

#Ask the player the fourth question
while (($question4 -ne "a") -and ($question4 -ne "b") `
  -and ($question4 -ne "c") -and ($question4 -ne "d")) {

  Clear-Host  #Clear the Windows command console screen

  Write-Host
  Write-Host " Which of the following was not part of the Normandy landings?"
  Write-Host
  Write-Host " A. Morocco"
  Write-Host " B. Sword"
  Write-Host " C. Omaha"
  Write-Host " D. Juno"
  Write-Host
  $question4 = Read-Host " Type the letter representing the correct answer" `
    "and press the Enter key"

}


#Clear the Windows command console screen
Clear-Host

#Ask the player the fifth question
while (($question5 -ne "a") -and ($question5 -ne "b") `
  -and ($question5 -ne "c") -and ($question5 -ne "d")) {

  Clear-Host  #Clear the Windows command console screen

  Write-Host
  Write-Host "What army did Patton command in the Sicilian campaign?"
  Write-Host
  Write-Host " A. 1st"
  Write-Host " B. 2nd"
  Write-Host " C. 7th"
  Write-Host " D. 9th"
  Write-Host
  $question5 = Read-Host " Type the letter representing the correct answer" `
    "and press the Enter key"

}


#Clear the Windows command console screen
Clear-Host

Write-Host
Write-Host " OK, now press the Enter key to see how you did."

#Pause script execution and wait for the player to press the Enter key
Read-Host


#Clear the Windows command console screen
Clear-Host

#Grade the answers for each quiz question
if ($question1 -eq "c") { $noCorrect++ }  #The answer to question 1 is "C"
if ($question2 -eq "b") { $noCorrect++ }  #The answer to question 2 is "B"
if ($question3 -eq "d") { $noCorrect++ }  #The answer to question 3 is "D"
if ($question4 -eq "a") { $noCorrect++ }  #The answer to question 4 is "A"
if ($question5 -eq "c") { $noCorrect++ }  #The answer to question 5 is "C"

#Assign a ranking based on quiz score
if ($noCorrect -eq 0) {
  Write-Host
  Write-Host " You did not get any questions correct."
  Write-Host
  Write-Host " Your assigned rank is Private."
}

if ($noCorrect -eq 1) {
  Write-Host
  Write-Host " You got 1 question correct."
  Write-Host
  Write-Host " Your assigned rank is Captain."
}

if ($noCorrect -eq 2) {
  Write-Host
  Write-Host " You got 2 questions correct."
  Write-Host
  Write-Host " Your assigned rank is Major."
}

if ($noCorrect -eq 3) {
  Write-Host
  Write-Host " You got 3 questions correct."
  Write-Host
  Write-Host " Your assigned rank is Colonel."
}

if ($noCorrect -eq 4) {
  Write-Host
  Write-Host " You got 4 questions correct."
  Write-Host
  Write-Host " Your assigned rank is General."
}

if ($noCorrect -eq 5) {
  Write-Host
  Write-Host " You got 5 questions correct."
  Write-Host
  Write-Host " Your assigned rank is Theater Commander."
}

#Pause script execution and wait for the player to press the Enter key
Read-Host


#Clear the Windows command console screen
Clear-Host

#Provide the player with instructions
Write-Host 
Write-Host " Thanks for taking the World War II Trivia Quiz!"

#Pause script execution and wait for the player to press the Enter key
Read-Host


#Clear the Windows command console screen
Clear-Host  
