[int]$number1 = read-host -prompt "Enter Your First Number "
[int]$number2 = read-Host -prompt "Enter Your Second Number "
$operator = read-host -prompt "Enter Operator Here + , * , / , - "

switch ($operator){
        "+" { $number1 + $number2 }
        "-" { $number1 - $number2 }
        "/" { $number1 / $number2 }
        "*" { $number1 * $number2 }
}
