powershell -NoProfile -ExecutionPolicy unrestricted  -Command "iex((new-object net.webclient).DownloadString('http://chocolatey.org/install.ps1'))"
set PATH=%PATH%;c:\Chocolatey\bin

call cinst GoogleChrome
call cinst sublimetext2
call cinst tortoisegit
call cinst tortoisesvn
call cinst xmind
call cinst FoxitReader
call cinst virtualbox

pause
