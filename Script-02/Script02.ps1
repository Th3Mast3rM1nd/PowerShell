[string]$ip = read-host -prompt " Enter Ip to Convert to Binary "
$splied_ip = $ip -split '\.'
foreach ( $ips in $splied_ip ) {
        $binary = [convert]::ToString([int32]$ips,2)
        if ($binary.length -lt 8 ) {
                $number = 8 - $binary.length
                $zero = "0" * [int]$number
                $zero += $binary
                $binary = $zero
                $binray_array += @($binary)
        } else {
        $binray_array += @($binary)
        }

}
$binray_array -join "."
