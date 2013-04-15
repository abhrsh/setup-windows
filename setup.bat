@echo off
set LOG=%~dp0\setup.log
set DOWNLOAD_DIR=%~dp0\downloads
pushd %~dp0

call lib\util.bat log "Start setup."

call lib\package.bat powershell
call lib\package.bat chocolatey

call lib\package.bat git
call lib\package.bat chrome
call lib\package.bat sublimetext
call lib\package.bat tortoisegit
call lib\package.bat tortoisesvn
call lib\package.bat xmind
call lib\package.bat foxitreader
call lib\package.bat virtualbox

call lib\package.bat vagrant
call lib\package.bat gow
call lib\package.bat gnupack
call lib\package.bat astah

call lib\util.bat log "Complete setup."

popd
pause
