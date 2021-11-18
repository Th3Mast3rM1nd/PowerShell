# Part 2

* ***Variables***

```powershell

$MaximumHistoryCount # to print value of a variable 
# value will be 4096 let's change it ( the max number of commands Powershell saves in command history )
$MaximumHistoryCount = 6000
$username = 'Mast3rM1nd'

# we can use as well set-variables , Get-Variable

Set-Variable -Name Country -Value Germany
Get-Variable -Name Country 

$null # null is a Variable that has no value and we can assign it new Varibales to make them empty
```
<img width="571" alt="Screen Shot 2021-11-04 at 19 37 07" src="https://user-images.githubusercontent.com/92652606/140399953-6ee5a91f-54ae-438c-a39f-3308ecae8c82.png">

* ***Data Type***

```powershell
# Boolean 1 or 0 , True or False

$switch = $true # $true is a boolean variable 
$switch = $false 

# integer Types

$number = 2
Get-Variable -Name $number
$number.GetType().name # get the type of a variable  INT32
$number = 10.2
$number.GetType().name # >> double 
# Integers come in two flavours:
                # - int (Int32)
                # - long (Int64)
# strings 

$country = "Germany"
$first_name = "Albert"
$last_name = "Einstein"
$full_name = "$first_name $lastname" 
$message = "$full_name Was Born in $country"
```
* ***Objects***

```powershell 

# objects has Methods and Properties 

$name = "mastermind"
Select-Object -InputObject $name -Property * # geting all Properties
```
<img width="545" alt="Screen Shot 2021-11-04 at 20 20 46" src="https://user-images.githubusercontent.com/92652606/140405972-138fcf15-dd90-4e4c-9d44-6afb0ab11ba4.png">

```powershell
# as we see $name has Lenght Properties 
$name.Lenght

# to get Methods and Properties of an Object

Get-Member  -InputObject $MaximumHistoryCount
Get-Member -InputObject $name
Get-Member  -InputObject $name -Name toupper # to get inforamtion about a method
Get-Member  -InputObject $name -Name toupper
$name.ToUpper() # to call a Method 
$newname = $name.Toupper()
```
<img width="1439" alt="Screen Shot 2021-11-04 at 20 34 03" src="https://user-images.githubusercontent.com/92652606/140407718-3bdd7825-d90d-42cb-b3f3-ecea11a0fa7f.png">

<img width="807" alt="Screen Shot 2021-11-04 at 20 35 34" src="https://user-images.githubusercontent.com/92652606/140408057-5086c35a-03a0-4f25-a8f0-8d7f23c1f974.png">

<img width="477" alt="Screen Shot 2021-11-04 at 20 36 53" src="https://user-images.githubusercontent.com/92652606/140408067-f4472139-5e34-4baf-a531-018fbd9a1d60.png">

* ***Array***

```powershell
$countries = @("France" , "Spain" , "Germany" ) # defining Array 
$countries[0] # reading the array elements
$countries[0] = "Morocco" # modiving Array 
$countries += "Holand" # adding Elements to array 
$countries += @("Egypt" , "Jordan") # adding a array to array 
```
* ***ArrayLists***

```powershell
$countries = [System.Collections.ArrayList]@("France" , "Spain" , "Germany" ) # defining Array List
$countries.add("Morocco") # Adding to Array list
$countries.remove("France") # Removing from array list
```
* ***Hashtable ( Dictionary )***

```powershell
$hashes = @{ base64 = "cGFzc3dvcmQK", md5 = "286755fad04869ca523320acce0dc6a" , rot13 = "Cnffjbeq" } # defining a hashtable
$hashes[base64] # reading Elements from hashtable
$hashes.base64 # reading as well Elements from hashtable
$hashes.Keys # getting all the keys 
$hahes.Values # getting all the Values
$hashes["shasum“] = "c8fed00eb2e87f1cee8e90ebbe870c190ac3848c" # addinh to the hashtable
$hashes.ContainKeys("md4") # check if the key exsit in the hashtable
$hashes.remove("rot13") 

```




 




