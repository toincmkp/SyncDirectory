Clear-Host

# �W������
$str = read-host
Write-Output $str
Write-Output ""

# �v�����v�g�t���W������
$str = read-host "User"
Write-Output $str
Write-Output ""

# �v�����v�g�t���Z�L���A�W������
$str = read-host "User" -assecurestring
Write-Output $str
Write-Output ""

# �ϐ��W�J
$str = "world"
Write-Host "hello, $str"

Write-Host "Hello" -ForegroundColor red
Write-Host "Hello" -BackgroundColor red
