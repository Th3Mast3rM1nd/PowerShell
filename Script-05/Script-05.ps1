Write-Host "       1 - System up time
           2 - Home Space Utilization
           3 - Disk Space Utilization
           0 - Quit"

$number = read-host -prompt "Enter your Choice [0-3] "

switch ($number) {
        1 { systeminfo | Select-String -pattern "System Boot Time" } 
        2 { $files = Get-ChildItem -path $home -Recurse 
            $total = ( $files  | Measure-Object -Sum Length).Sum / 1GB
            Write-Host "Total Size of Home Utilization : " $total  "GB"
        }
       3 { $free = Get-CimInstance -ClassName Win32_LogicalDisk | Select-Object -Property FreeSpace 
           $free_space = ($free | Measure-Object -Sum FreeSpace).Sum / 1GB
           Write-Host "Total Free Disk Space " $free_space "GB"
        }
       0 { Write-Host "Program Terminated " }

}
