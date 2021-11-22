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




