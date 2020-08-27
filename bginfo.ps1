$servername=$args[1]

Get-CimInstance Win32_OperatingSystem -ComputerName "$servername" | 
Select-Object Status,Caption,CSName,LastBootUpTime,SerialNumber,FreePhysicalMemory,FreeVirtualMemory,TotalVirtualMemorySize,TotalVisibleMemorySize | 
ConvertTo-Json