# 1～100
#$num = Get-Random -minimum 0x21 -maximum 0x7f
Param([int]$length)

$str = ""
for($i = 0; $i -lt $length; $i++){
    $num = Get-Random -minimum 0x21 -maximum 0x7f
    $str += [char]$num
}

$str