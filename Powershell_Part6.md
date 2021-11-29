# Part 6

* ***Modules***

```powershell
Get-Module # to see all the Modules on your System

```
<img width="1363" alt="Screen Shot 2021-11-29 at 16 14 01" src="https://user-images.githubusercontent.com/92652606/143893415-cf8fe327-f4f4-4a25-9910-2b25cd4b04af.png">

```powershell
Get-Command -Module Microsoft.PowerShell.Management # commands u can use from the Module 

```
<img width="988" alt="Screen Shot 2021-11-29 at 16 15 21" src="https://user-images.githubusercontent.com/92652606/143893724-0a1673ac-071f-45ec-aef3-7c895e351bfd.png">

```powershell
Get-Module -ListAvailable # List all Installed Modules also the One that are not imported 

```
* ***Default Modules Path***

<img width="461" alt="Screen Shot 2021-11-29 at 16 21 50" src="https://user-images.githubusercontent.com/92652606/143894750-1bdf5594-bb51-4551-a5ec-708b9d802e06.png">

```powershell 
# finding modules 
Get-Command -Module PowerShellGet 
Find-Module -Name *subnet* # looking for a module with a subnet name 

```
<img width="1254" alt="Screen Shot 2021-11-29 at 16 31 46" src="https://user-images.githubusercontent.com/92652606/143896345-6288fe69-7e07-4938-b631-7ebcb716bd8e.png">

```powershell 
# Install Module 
Find-Module -Name Subnet | Install-Module

```
<img width="760" alt="Screen Shot 2021-11-29 at 16 34 35" src="https://user-images.githubusercontent.com/92652606/143896872-1a21ef3b-3865-4e3f-8358-b89fe5aa1598.png">

```Powershell
# Uninstall Module 
Uninstall-Module -name Subnet 

```
