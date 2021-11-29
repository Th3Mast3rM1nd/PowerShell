# github user inforamtion
$url = "https://api.github.com/users/"

function Get_github_info {
    Process {
        $response = Invoke-RestMethod -Uri ( $url + $username )
        $info = $response | Select-Object -Property name,followers ,following , created_at
        Write-Output $info
}
}
while ($true) {
    $username = Read-Host -Prompt "Enter a username"
    if ((Invoke-WebRequest  ($url + $username )  -UseBasicParsing  | Select-Object -ExpandProperty StatusCode ) -eq "200" ) {
        Get_github_info
        break
    } else {
        Write-Output "$Username Not found try again "
    }
}
