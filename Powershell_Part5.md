# Part 5

* ***Search in a file using regex***

```powershell
ipconfig | Out-File -FilePath "C:\ipconfig_file.txt" # we sent the output of ipconfig to file 

Get-Content -Path  C:\ipconfig_file.txt | Select-String -Pattern "[0-9]{1,3}(\.[0-9]{1,3}){3}" | Out-File -FilePath $ENV:USERPROFILE\ips_2.txt

Get-Content -Path C:\*.txt | Select-String -Pattern "Password*" 

```
* ***Exceptions and Errors***

```powershell 
# 
