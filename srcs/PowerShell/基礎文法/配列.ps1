$names = "tokyo", "saitama", "kanagawa"
Write-Host $names[1]
Write-Host $names[-1]
Write-Host $names

$names2 = @("tokyo", "saitama", "kanagawa")
Write-Host $names[0]

$numbers = @(1..10)
Write-Host $numbers[2]
$numbers[2] = -1
$numbers

# 配列の数
Write-Host "--------------------"
$numbers.Count
$numbers.Length

# 配列の結合
Write-Host "--------------------"
$num1 = @(1, 2, 3)
$num2 = @(5, 6, 7)
$num12 = $num1 + $num2
Write-Host $num12

# 配列の追加
Write-Host "--------------------"
$newnum = $num1 + 99 + $num2
Write-Host $newnum

# 配列の部分削除
Write-Host "--------------------"
$num10 = @(1..10)
$num10 = $num10[0..2 + 5 + 7..9]
Write-Host $num10
