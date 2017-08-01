$pro = (Get-WmiObject -Class Win32_UserProfile | where {$_.LocalPath.split('\')[-1] -ne 'usm' -and $_.LocalPath.split('\')[-1] -ne 'administrador' -and $_.LocalPath.split('\')[-1] -ne 'central' -and $_.LocalPath.split('\')[-1] -ne 'olimpiadas' -and $_.LocalPath.split('\')[-1] -ne 'olimpiadas.LABORATORIO'}).SID;
foreach($user in $pro){ (gwmi -class Win32_UserProfile -filter "SID='$user'").Delete(); $user};

Remove-Item C:\script.ps1;
