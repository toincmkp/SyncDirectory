
$today = Get-Date

# if文
if($today.day -eq 15){
    Write-Host "Remember to pay the rent today."

} elseif($today.day -eq 3) {
    Write-Host "3."
    if($today.month -eq 8){
        Write-Host "8."
    }

} else {
    Write-Host "It is OK to go out to eat!"
}

# switch文
switch($today.day){
    1  {Write-Host "A"}
    1  {Write-Host "B"}
    3  {Write-Host "C"}
    3  {Write-Host "D"}
    5  {Write-Host "E"}
    14 {Write-Host "F"}
    16 {Write-Host "G"}

    default {Write-Host "ZZZZ"}
}

# 比較演算子と論理演算子
$x = 1
$y = 2
-not ($x -eq $y)
! ($x -eq $y)

# 文字列比較演算子
$a = "abc"
$b = "ABC"
if($a -ieq $b){Write-Host "ieq"}
if($a -ceq $b){Write-Host "ceq"}
