# Part 3
* ***Pipeline*** 
```powershell 
$process_name = 'YourPhone'
Get-Process -name $process_name | Stop-Process # command1 | command2 | command3 
```
<img width="583" alt="Screen Shot 2021-11-15 at 14 45 03" src="https://user-images.githubusercontent.com/92652606/141792352-d6106a62-9aa6-43f5-820d-c42a7262f95b.png">

<img width="522" alt="Screen Shot 2021-11-15 at 14 47 17" src="https://user-images.githubusercontent.com/92652606/141792645-0e2439a6-06ab-49b0-9144-4b1aedfbed35.png">

* ***Writing Scripts***

```powershell

Get-ExeuctionPolicy
# restricted : dosent allow you run scripts
# Allsigned : only trusted Scripts 
# RemoteSigned : only scripts you did write or download 
# Unrestricted : allow any script

Set-ExecutionPloicy -ExecutionPolicy RemoteSigned

bash -c "vim script.ps1" # to open script.ps1 in vim editor you can use nano as well bash -c "nano script.ps1"

./script.ps1# to run your script 

```
* ***Conditional Statements*** 

```powershell 
1 -eq 1 # True  equal 
1 -lt 2 # False less than 
1 -le 2 # True  less than or equal
2 -ne 1 # True  not equal 
2 -gt 1 # True greater than
2 -ge 2 # True greater than or equal  
$name = "mastermind"
$names = @("mastermind" , "root" , "admin )
$names -contains $names # True -contains to check if value in array 
```
* ***if-else Statements***

```powershell
# if ( Condition ) {
#    code to run 
# } else {
#    run this code
}
$name = "192.168.1.120"
if ( Test-Connection -ComputerName $name -Quiet ) {
    Write-Host " The Host $name Is Up "
 } else {
    Write-Error -Message " The Host $name Is Down "
 }
 # elsif Statements 
$number = 10
$number2 = 100

if ( $number -ne 10 ) {
        write-Host "number is equal $number "
} elseif ( -not ( $number -eq $number2 )) {
        write-Host "$number is not equal $number2 "
} elseif ( $number -lt 100 ) {
        Write-Host "number is less than 100 "
}
```
* ***Switch Statement***

```powershell
Switch (<Value>)
{
<Condition1> {Action1}
<Condition2> {Action2}
}
```
```powershell
$number = 100

switch ($number){
        10 { Write-Host "number is $number" }
        100 { write-host "number is $number and greather than 99 " }
        200 { Write-Host "number is gt 100 " }
}
```

 
   

