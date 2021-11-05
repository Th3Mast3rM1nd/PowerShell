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
Get-Command -Verb Move # to get all command that use Move
Get-Command -Verb Remove # to get all command that use remove
Get-Command -Verb Get -noun help #  get all command that use Get and has a Help Name 
```
<img width="907" alt="Screen Shot 2021-11-03 at 21 06 45" src="https://user-images.githubusercontent.com/92652606/140184762-717059db-b177-4475-9f8d-de347f876621.png">

```powershell
Get-Help Get-Content # to display help and info about a command 
Get-Help Add-Content -Examples # to get examples how to use the command 
Get-Help Add-Content -Full # get full info and more details
Get-Help -Name Move-It*
Update-Help # to update the Help documentation
```
<img width="677" alt="Screen Shot 2021-11-03 at 21 17 37" src="https://user-images.githubusercontent.com/92652606/140186250-64dd1946-ff76-4e7b-90bc-2e92947d53e2.png">









