(Get-Date).ToString('dd.MM.yyyy   HH:mm')  | Out-File C:\ARDUINO\reboot.txt  -append

while($TRUE){
Start-Sleep -s 3
$port= new-Object System.IO.Ports.SerialPort COM4,9600,None,8,one
$port.open()
$port.WriteLine("H")
$port.Close()
}