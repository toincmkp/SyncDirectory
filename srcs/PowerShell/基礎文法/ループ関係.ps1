# break, continueは全で可能
# do-while
$i = 1
do{
    Write-Host $i
    $i++
} while($i -le 10)

Write-Host "------------------------"

# do-until
$i = 1
do{
    Write-Host $i
    $i++
} until($i -gt 10)

Write-Host "------------------------"

# for
for($i = 1; $i -le 5; $i++){
    Write-Host $i
}

for($i = 5; $i -ge 1; $i--){
    Write-Host $i
}

Write-Host "------------------------"

$mem = @("a", "b", "c")
for($i = 0; $i -lt $mem.length; $i++){
    Write-Host $mem[$i]
}

Write-Host "------------------------"

# foreach
$nums = @(1..10)

foreach($num in $nums){
    Write-Host $num
}

Write-Host "------------------------"

foreach($x in Get-Service){
    if($x.Status -eq "Running"){
        Write-Host $x.name
    }
}
