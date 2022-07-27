#Servicerestarer 
$loop = $true
do
{
	$svc = Get-Service "ServiceName"
	if($svc.Status.ToString().ToLower() -ne "running"){
		Start-Service -Name "ServiceName"
	}
    Start-Sleep -Seconds 30 
} while ($loop -eq $true)
