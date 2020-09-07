#usage : In Task scheduler, schedule a task to "start a program" with Program/Script : powershell.exe and Arguments : "<Location>\Reminder.ps1 -url https://feedly.com/i/my"
param ($url) #named parameter for user to pass when calling for reminders
 
if([string]::IsNullOrEmpty($url))
{
	$url=https://google.com # default url just to open Edge window with
}
# beep thrice before displaying the window
for($i = 0; $i -lt 3; $i++){[console]::Beep(200,800);Start-Sleep(0.5); };

# Display YesNo MessageBox. Yes opens the link, No does nothing assuming the Reminder is not needed
Add-Type -AssemblyName PresentationFramework
$msgBoxInput =[System.Windows.MessageBox]::Show('Would you like to open the Reminder Link?','Reminder','YesNo','Warning')

switch($msgBoxInput) {
'Yes' {
start microsoft-edge:$url
}
'No' {
## Do nothing
}
}
