$tc = New-Object System.Net.Sockets.tcpClient
$tc.connect("192.168.1.8", 80)
$sock = $tc.GetStream()

$shellcode = @(0x41, 0x41, 0x41)
$enc = New-Object System.Text.AsciiEncoding

$data = ""
foreach($b in $shellcode){
    $data += [char]$b
}

$senddata = $enc.GetBytes($data)
$sock.Write($senddata, 0, 3)

$rbuf = new-object System.Byte[] 1024
$sock.Read($rbuf, 0, 1024)

$recv = $enc.GetString($rbuf)
Write-Host $recv

$tc.close()
