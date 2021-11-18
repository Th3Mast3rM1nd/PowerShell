[string]$ip = read-host -prompt " Enter Ip to Convert It to Binary "
$split_ip = $ip -split '\.'
foreach ( $i in $split_ip ) {
        $binary = [convert]::ToString([int32]$i,2)
        if ($binary.length -lt 8 ) {
                $number = 8 - $binary.length
                $zero = "0" * [int]$number
                $zero += $binary
                $binary = $zero
                $binary_array += @($binary)
        } else {
        $binary_array += @($binary)
        }

}
$binary_array -join "."
