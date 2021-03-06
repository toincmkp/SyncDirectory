# 文字列の連結
$x = "hello, "
$y = "world."
Write-Host ($x + $y)

$a = "AAAA"
$a += "BBBB"
Write-Host $a
Write-Host "--------------------------------------"

#文字列の反復
$b = "Ha " * 3
Write-Host $b
Write-Host "--------------------------------------"

#文字列の入れ替え
$c = "banana taberu"
$d = $c -replace "banana", "apple"
Write-Host $d
Write-Host "--------------------------------------"

#split
Write-Host
-split "aaa bbb ccc"
Write-Host
"a,b,c" -split ','
Write-Host "--------------------------------------"

#join
Write-Host
$e = -join ("ii", "j")
Write-Host $e
"a", "b", "c" -join " "
