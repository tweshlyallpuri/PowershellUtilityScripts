Write-Output "Computer Info : "
Get-WmiObject -Class Win32_ComputerSystem | Format-Table

Write-Output "***************************************************************************************************************"
Write-Output "***************************************************************************************************************"

Write-Output "OS Info : "
Get-WmiObject -Class Win32_OperatingSystem | Format-Table

Write-Output "***************************************************************************************************************"
Write-Output "***************************************************************************************************************"

Write-Output "Bios Info :"
Get-WmiObject -Class Win32_BIOS | Format-Table

Write-Output "***************************************************************************************************************"
Write-Output "***************************************************************************************************************"

Write-Output "Storage Disks : "
Get-WmiObject -Class Win32_LogicalDisk | Format-Table
Get-PhysicalDisk | Format-Table

Write-Output "***************************************************************************************************************"
Write-Output "***************************************************************************************************************"

Write-Output "Ram slots : "
Get-WmiObject -class Win32_PhysicalMemoryArray | Format-Table
#Get-WmiObject Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum
Get-WmiObject Win32_PhysicalMemory | Select-Object Capacity, DataWidth, ConfiguredClockSpeed, ConfiguredVoltage, Manufacturer, PartNumber, Description, DeviceLocator, Tag | Format-Table
Write-Output "***************************************************************************************************************"
Write-Output "***************************************************************************************************************"