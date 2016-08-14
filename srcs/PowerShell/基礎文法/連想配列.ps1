$ids = @{}
$ids[100] = "AAAA"
$ids[120] = "BBBB"
$ids["aaa"] = "ccc"
$ids

Write-Host "------------"

$name = @{alex = "aaaa"; tim = "bbbb"; 123 = "cccc"; tom = 1000}
$name
Write-Host "------------"

# 連想配列の結合
$sum = $ids + $name
$sum
Write-Host "------------"

# 連想配列の削除
$sum.Remove("alex")
$sum
Write-Host "------------"

# 連想配列の中身全削除
$sum.Clear()
$sum
