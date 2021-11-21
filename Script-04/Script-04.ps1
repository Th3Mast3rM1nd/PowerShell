#  small port scanner
# generate ports
$wellknown_ports = 1023
$ports = @()
for ($i = 1  ; $i -lt $wellknown_ports ; $i++){
    $ports += @($i)
}

$ip = Read-Host "Enter IP"

$ports.ForEach({ if (Test-NetConnection -ComputerName $ip -Port $_ -InformationLevel Quiet -WarningAction SilentlyContinue ) {
    Write-Host $_ "IS Open"
}
})
