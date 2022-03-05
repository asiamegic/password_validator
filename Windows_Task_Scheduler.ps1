$time = New-JobTrigger -Daily -At 9:00AM

$creds = Get-Credential Artem

$rights = New-ScheduledJobOption -RunElevated

Register-ScheduledJob -Name Start_notepad -FilePath C:\Users\Artem\Desktop\run_notepad.ps1 -Trigger $time -Credential $creds -ScheduledJobOption $rights
