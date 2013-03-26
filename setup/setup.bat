@echo off
pushd %~dp0

call util.bat log "Start setup."

call package.bat powershell
call package.bat chocolatey

call package.bat git
call package.bat chrome
call package.bat sublimetext
call package.bat tortoisegit
call package.bat tortoisesvn
call package.bat xmind
call package.bat foxitreader
call package.bat virtualbox

call package.bat vagrant
call package.bat gow
call package.bat gnupack

call util.bat log "Complete setup."

popd
pause
