## Created by Dan Wilson 10/05/2017 ##
## Version 1.0                      ##
## This script will output the exchange servers disk size ##

$Servers = gc C:\temp\servers.txt

foreach ( $args in $Servers) { 
get-WmiObject win32_logicaldisk -ComputerName $args -Filter "Drivetype=3"  |  
ft SystemName,DeviceID,VolumeName,@{Label="Total SIze";Expression={$_.Size / 1gb -as [int] }},@{Label="Free Size";Expression={$_.freespace / 1gb -as [int] }} -autosize 
} 