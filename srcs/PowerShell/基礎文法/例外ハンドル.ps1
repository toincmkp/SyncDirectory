# trapのオプションがある場合それのみ拾う
# なければ全広い
# エラー起きたときに入ってくるのがtrap

trap [dividebyzeroexception] {
#trap {
    Write-Host "error"
    continue
    # return / continue / break
}

$x = 10
$y = 0

$z = $x / $y
Write-Host "aiueo"

# try, catchもある、使うときに要調査
