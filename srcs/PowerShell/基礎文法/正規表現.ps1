# -match
if("Once upon a time" -match "ONCE"){
    Write-Host "1 Match!"
}

# -cmatch
if("Once upon a time" -cmatch "ONCE"){
    Write-Host "2 Match!"
}

# -notmatch
if("Once upon a time" -notmatch "xxx"){
    Write-Host "3 Match!"
}

# -cnotmatch
if("Once upon a time" -cnotmatch "xxx"){
    Write-Host "4 Match!"
}

# |
if("mar lion" -match "war|mar|jar"){
    Write-Host "5 Match!"
}

# (|)
if("mar lion" -match "(wa|ma|ja)r"){
    Write-Host "6 Match!"
}

# .は任意一文字
if("Mrs. Ford!" -match "Mr."){
    Write-Host "7 Match!"
}

# \.でピリオドそのもの(エスケープは全てこれ)
if("Mr. Ford!" -match "Mr\."){
    Write-Host "8 Match!"
}

# 連続ピリオド
if("Molly" -match "M...y"){
    Write-Host "9 Match!"
}

# [value]
if("Molly" -match "M[io]lly"){
    Write-Host "10 Match!"
}

# [renge]
if("Randy" -match "[R-T]andy"){
    Write-Host "11 Match!"
}
# [^]以外の文字
if("Randy" -match "[^RC]andy"){
    Write-Host "12 Match!"
}

# ^行頭
if("William" -match "^wil"){
    Write-Host "13 Match!"
}

# $行末
if("William" -match "iam$"){
    Write-Host "14 Match!"
}

# *0文字を含む任意の文字列
if("Daddy" -match "d*"){
    Write-Host "15 Match!"
}

# *0文字から1文字の任意の文字
if("Daddy" -match "d?"){
    Write-Host "16 Match!"
}

# $行末
if("William" -match "iam$"){
    Write-Host "17 Match!"
}

# 以下リピート系
Write-Host "1" ("ss" -match "\w*")
Write-Host "2" ("ss" -match "\w?")
Write-Host "3" ("ss" -match "\w{2}")
Write-Host "4" ("ss" -match "\w{2,}")
Write-Host "5" ("ss" -match "\w{2,3}")
Write-Host "6" ("123123123" -match "123+")
Write-Host "7" ("winnnnnner" -match "win+er")

# 普通の使い方
# 基本的に見ているステートメント全体の中で存在するかどうかになるところ注意
Write-Host "----------------------"
Write-Host "1" ("March 13th" -match "[0-9]")
Write-Host "2" ("March 13th" -match "[adghuk]")
Write-Host "3" ("March 13th" -match "[A-Z]")
Write-Host "4" ("March thirteenth" -match "[0-9]")

# \d, \w, \s => [0-9], [0-9A-Za-z_], [ \t\f\r\n\v]
# \D, \W, \S => 上記が存在しないパターンでマッチ
Write-Host "5" ("aaaaa1aaaaa" -match "\d")
Write-Host "6" ("aaaaaaaaaa" -match "\D")
