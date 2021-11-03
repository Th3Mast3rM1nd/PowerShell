# PowerShell Part 1

```powershell 
Get-Alias # see all bultin-in Aliases Some examples :
  # Alias           copy -> Copy-Item
  # Alias           cp -> Copy-Item
  # Alias           cpi -> Copy-Item
  # Alias           cpp -> Copy-ItemProperty
  # Alias           curl -> Invoke-WebRequest
  
Get-Command # see all the commands of powershell and functions as well
Get-Command -Name cp 
# Types of Commands on Powershell 
    # 1. cmdlet : are microsoft bultin-in commands 
    # 2. alias 
    # 3. functions : are commands Writen on Powershell 
Get-Command -verb Get # to get all command that use Get . There is as well ( Set , Update , Move , Remove )
Get-Command -Verb Move
Get-Command -Verb Remove
Get-Command -Verb Get -noun help #  get all command that use Get and has a Help Name 
```


