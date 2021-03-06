function Add-Numbers($x, $y){
    Write-Host ($x + $y)
}

Add-Numbers 3 4

Write-Host

# ---------------------------------------

function Add-Numbers2{
    param($x, $y)
    Write-Host ($x + $y)
}

Add-Numbers2 3 4

Write-Host

# ---------------------------------------
# 変数名を引数でアクセス可能

function test-test{
    param($name, $num)
    Write-Host "name : $name, num : $num"
}

test-test -num bbb -name tom
Write-Host

# ---------------------------------------
# 引数のデータ型の指定

function test-test{
    param([int]$num1, [int]$num2)
    Write-Host "num1 : $num1, num2 : $num2," "sum :" ($num1 + $num2)
}

test-test -num2 55 -num1 11
Write-Host

# ---------------------------------------
# 引数のデフォルト指定

function test-default{
    param([int]$num1 = 100, [int]$num2 = 500)
    Write-Host "num1 : $num1, num2 : $num2," "sum :" ($num1 + $num2)
}

test-default -num2 55
Write-Host

# ---------------------------------------
# 関数内の特別変数args

function Add-Serial {
    foreach($i in $args){
        $z += $i
    }

    Write-Host "z = $z"
}

Add-Serial 1 2 3 4 5 6
Write-Host

# ---------------------------------------
# 特別変数input

function Get-Filenames{
    $input | Where-Object{$_.Name -ne "test.ps1"} | Sort-Object
}

Get-ChildItem | Get-Filenames
Write-Host

# ---------------------------------------
# 関数のリターンはその関数内で実行してやればそのまま実行結果がリターン値となる

function Add-Return{
    param([int]$x, [int]$y)
    $z = $x + $y
    $z
}

$ret = Add-Return 2 3
Write-Host $ret

Write-Host

# ---------------------------------------
# スクリプトレベルの変数(グローバル変数っぽい)とプライベートな変数の定義
# privateは$scriptのところを$privateにするだけ

$userNmae = ""

function Get-UserName{
    $script:userName = Read-Host "What is your name?"
}

Get-Username
Write-Host "Hello, $userName"

Write-Host

# ---------------------------------------
# フィルター
# 単純に$input形式ではなく$_としてデータを受け取れるになる関数のようなもの

filter Get-OddEven{
    $x = $_ % 2
    
    if($x -eq 1){
        $result = "Odd"
    } else {
        $result = "Even"
    }
    
    $result
}

@(1..10) | Get-OddEven



