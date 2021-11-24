# Part 5

* ***Search in a file using regex***

```powershell
ipconfig | Out-File -FilePath "C:\ipconfig_file.txt" # we sent the output of ipconfig to file 

Get-Content -Path  C:\ipconfig_file.txt | Select-String -Pattern "[0-9]{1,3}(\.[0-9]{1,3}){3}" | Out-File -FilePath $ENV:USERPROFILE\ips_2.txt

Get-Content -Path C:\*.txt | Select-String -Pattern "Password*" 

```
* ***Exceptions and Errors***

```powershell 
# -ErrorActions 
# Continue : Output the error and Continue 
# Stop : Output the error and Stop cmdlet Without Executing 
# Ingnore : Continue Executing Cmdlet without outputing the Error 
# SilentlyContinue : Continue Executing Cmdlet without outputing the Error ( error will be saved in $Error)
# Inquire : Output The error and ask the user for input before Continue 

try {
    Code
} catch {
    code to run if error found 
} Finally {
    Code to run at the end 
}

[Int32]$number = 0
[Int32]$number2 = 5
try {
        $result = $number2 / $number0
} catch {
        $_.Exception.Message
} 

$folder = "./NotFoundFolder"
try {
        $files = Get-ChildItem -Path $folder -ErrorAction Stop # -ErrorAction Stop
        $files.foreach({
                        $files_text = Get-Contents $files
                        $files_text[0]
        })
} catch {
        $_Exception.Message
}
```
* ***Functions***

```powershell
$number = 1
$number2 = 10
function sum-numbers { $number + $number2 }
# to call the function use just the name sum-numbers
```
```powershell
# function with Parameters
$X = 10
function  sum-numbers {
    [cmdletbinding()]
    param(
        # Parameter help description
        [Parameter(Mandatory)] # the Parameter is Mandatory 
        [INT] # INT is the Parameter type of Data [String] [Double] [INT64]......
        $NUMBER
    )
    $X + $NUMBER
}
sum-numbers 
```
```powershell

# Parameter with a Default Value 
$X = 10
function  sum-numbers {
    [cmdletbinding()]
    param(
        # Parameter help description
        [Parameter(Mandatory)] # the Parameter is Mandatory 
        [INT] # INT is the Parameter type of Data [String] [Double] [INT64]......
        $NUMBER = 1000
    )
    $X + $NUMBER
}
sum-numbers
```
```powershell
# Parameter Validation 
$X = 1000
function sum-numbers {
     [cmdletbinding()]
     param(
           [Parameter()]
           [ValidateSet(1000,20000)] # we validate that the user must enter 1000 or 20000 otherwise the function will fail 
           [INT]$NUMBER
     )
     $X + $NUMBER
     
}
sum-numbers -NUMBER 1000
```
```powershell
function  Count-files {
        param(
                # Parameter help description
                [Parameter(Mandatory)]
                [string]
                $Path
        )
        $files = Get-ChildItem -path $path
        $count = 1
        $files.foreach( {$count++} )
                
        $count 
}

Count-files -Path ../Downloads

```powershell
# using pipeline With functions 
function  Count-files {
        param(
                # Parameter help description
                [Parameter(Mandatory, ValueFromPipeline )] # ValueFromPipeline ( the function will accept the value from a pipeline )
                [string]
                $Path
        )
        Process { 
                $files = Get-ChildItem -path $path
                $count = 1
                $files.foreach( {$count++} )
                
                $count 
                }
}
$directory =  Get-ChildItem -Directory ./ 
$directory.ForEach({ $_ | Count-files })

