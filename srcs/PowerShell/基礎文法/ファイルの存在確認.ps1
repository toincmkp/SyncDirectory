# ファイルの存在確認
if(Test-Path "C:\Users\Administrator\Desktop\powershell\test.ps1"){
    Write-Host "Found."
    $lastWritten = (Get-Item C:\Users\Administrator\Desktop\powershell\test.ps1).LastWriteTime
    $lastWritten
    
} else {
    Write-Host "Not found."
}