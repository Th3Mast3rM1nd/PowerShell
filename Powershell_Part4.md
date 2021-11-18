# Part 4

* ***Foreach loop***
```powershell 
$names = @("mastermind" , "root" , "admin" )
foreach ( $name in $names ) {
        if ( $name -eq "mastermind" ) {
        $password = read-host -prompt "Enter Password "
                if ( $password -eq "password" ) {
                write-host "Welcome $name"
                }else{
                write-host "Wrong Password"
                }
        }

}
```
```powershell
$numbers = @(1 , 3 , 4 , 5 )
foreach ( $i in $numbers ){
        $total += $i

}
Write-Host "The sum of $numbers is : $total"

```
* ***foreach-Object***
```powershell
$numbers = @(1 , 3 , 4 , 5 )
$numbers | foreach-Object  -Process { # we can use pipeline when using foreach-Object 
    $sum += $_
}
Write-Host $sum
```
* ***foreach Method***
```powershell
$names = @("mastermind" , "root" , "admin" )
$names.foreach({
        if ( $_ -eq "mastermind" ){
        Write-Host "Username found"
        }
})
```
* ***for loop***
```powershell
for ($i = 0; $i -lt 10 ; $++ ) {
    Write-Host $i
}

names = ("root","ssh","admin","adm")
for ( $i = 0; $i -lt $names.length; $i++) {
        Write-Host $names[$i]
}

```
* ***While Loop***
```powershell 
$counter = 0
while ( $counter -lt 10 ) {
      $counter 
      $counter++
}
```
```powershell
$counter = 0
while ( $true ) {
        $counter
        $counter++
        if ( $counter -eq 100 ){
        break
}
}

```
* ***do/until loop***
```powershell
do {
    $password = Read-Host -prompt "Enter Your Password "
    } until ( $password -eq "mastermind" )
      Write-Host "Correct Password" 
