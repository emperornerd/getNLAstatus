$computers = get-content .\servers.txt
foreach ($computername in $computers)
{
echo $computername >> .\nlalog.txt
(Get-WmiObject -class "Win32_TSGeneralSetting" -Namespace root\cimv2\terminalservices -ComputerName $ComputerName -Filter "TerminalName='RDP-tcp'").UserAuthenticationRequired >> .\nlalog.txt
} 
