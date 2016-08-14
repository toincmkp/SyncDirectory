Clear-Host

# 標準入力
$str = read-host
Write-Output $str
Write-Output ""

# プロンプト付き標準入力
$str = read-host "User"
Write-Output $str
Write-Output ""

# プロンプト付きセキュア標準入力
$str = read-host "User" -assecurestring
Write-Output $str
Write-Output ""

# 変数展開
$str = "world"
Write-Host "hello, $str"

Write-Host "Hello" -ForegroundColor red
Write-Host "Hello" -BackgroundColor red
