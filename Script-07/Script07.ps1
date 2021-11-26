Write-Output "           1 - System up time
           2 - Home Space Utilization
           3 - Disk Space Utilization
           0 - Quit"

# This Script is The same as Script 5 but uisng functions 

function  System_up_time{
    
    $uptime = (Get-Date) - (Get-CimInstance Win32_OperatingSystem).LastBootUpTime 
    Write-Output "System Up time Is " $uptime
}

function Home_Space_Utilization{
    $files = Get-ChildItem -path $home -Recurse 
    $total = ( $files  | Measure-Object -Sum Length).Sum / 1GB
    Write-Output " Home Space Utilization :" $total "GB"
    
}

function Disk_Space_Utilization{
    $free = Get-CimInstance -ClassName Win32_LogicalDisk | Select-Object -Property FreeSpace
    $free_space = ($free | Measure-Object -Sum FreeSpace).Sum / 1GB
    Write-Output "Total Free Disk Space " $free_space "GB"
   
}
$number = Read-Host -Prompt "Enter Your Choice [0-3]"
switch ($number) {
        1 { System_up_time } 
        2 { Home_Space_Utilization }
        3 { Disk_Space_Utilization }
        0 { Write-Output "Program Terminated" }
}

