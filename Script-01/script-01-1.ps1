[int]$number1 = read-host -prompt "Enter Your First Number "
[int]$number2 = read-Host -prompt "Enter Your Second Number "
$operator = read-host -prompt "Enter Operator Here + , * , / , - "
# using if-elseif 
if ( $operator -eq "+" ){
        $total = $number1 + $number2
        Write-Host "Total is $total " -ForegroundColor Green
} elseif ( $operator -eq "-" ) {
        $total = $number1 - $number2
        Write-Host "Total is $total " -ForegroundColor Green
} elseif ( $operator -eq "/" ) {
        $total = $number1 / $number2
        Write-Host "Total is $total " -ForegroundColor Green
} elseif ( $operator -eq "*" ) {
        $total = $number1 * $number2
        Write-Host "Total is $total " -ForegroundColor Green
}
