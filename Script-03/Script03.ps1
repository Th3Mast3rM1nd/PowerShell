$ip = read-host " making ip list of subnet 255.255.255.0 "
# enter ip 192.168.0.0 or 10.10.1.0 
$ip = $ip.TrimEnd("0")
for ( $i = 0 ; $i -lt 256 ; $i++){
    "$ip$i" | Out-File -FilePath $ENV:USERPROFILE\ips.txt -Append
}
Write-Host -ForegroundColor Green "Writing output to a text file....."

Write-Host -BackgroundColor Red  "File Will be Found Here " $ENV:USERPROFILE

$answer = Read-Host "Would you like to read the file Y|N"

if ($answer.ToLower() -eq "y" ){
    Get-Content -Path $ENV:USERPROFILE\ips.txt 

} else {
    Write-Host "Program Terminted "
}
