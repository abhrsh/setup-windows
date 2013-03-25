@echo off
pushd %~dp0
if "%DOWNLOAD_DIR%"=="" set DOWNLOAD_DIR=downloads

if not "%~1"=="" call :%~1

popd
goto :EOF

:powershell
	call util.bat log "Installing Powershell."
	start http://www.microsoft.com/ja-jp/download/details.aspx?id=16818
	call util.bat log "Press any key after Powershell install manually."
	pause
exit /b

:xp_suppoert_tool
	call util.bat log "Installing Windows XP Support Tool."
	start http://www.microsoft.com/ja-jp/download/details.aspx?id=18546
	call util.bat log "Press any key after Windows XP Support Tool install manually."
	pause
eexit /b

:chocolatey
	call util.bat log "Installing Chocolatey."
	powershell -NoProfile -ExecutionPolicy unrestricted  -Command "iex((new-object net.webclient).DownloadString('http://chocolatey.org/install.ps1'))"
	set PATH=%PATH%;C:\Chocolatey\bin
exit /b

:chrome
	call util.bat log "Installing GoogleChrome."
	call cinst GoogleChrome
exit /b

:sublimetext
	call util.bat log "Installing SublimeText2."
	call cinst sublimetext2
exit /b

:tortoisegit
	call util.bat log "Installing TortoiseGit."
	call cinst tortoisegit
exit /b

:tortoisesvn
	call util.bat log "Installing TortoiseSVN."
	call cinst tortoisesvn
exit /b

:xmind
	call util.bat log "Installing XMind."
	call cinst xmind
exit /b

:foxitreader
	call util.bat log "Installing FoxitReader."
	call cinst FoxitReader
exit /b

:virtualbox
	call util.bat log "Installing VirtualBox."
	call cinst virtualbox
exit /b

:virtualbox
	call util.bat log "Installing VirtualBox."
	call cinst virtualbox
exit /b

:git
	call util.bat log "Installing Git."
	call cinst git.commandline
exit /b

:gow
	call util.bat log "Installing Gow."
	set FILE_NAME=Gow-0.7.0.exe
	set URL=https://github.com/downloads/bmatzelle/gow/%FILE_NAME%
	set FILE=%DOWNLOAD_DIR%\%FILE_NAME%

	call util.bat download "%URL%" "%FILE%"
	start %FILE%
exit /b

:vagrant
	call util.bat log "Installing Vagrant."
	set FILE_NAME=Vagrant.msi
	set URL=http://files.vagrantup.com/packages/67bd4d30f7dbefa7c0abc643599f0244986c38c8/%FILE_NAME%
	set FILE=%DOWNLOAD_DIR%\%FILE_NAME%

	call util.bat download "%URL%" "%FILE%"
	start msiexec /i "%FILE%" /passive
exit /b

:chef
	call util.bat log "Installing Chef."
	set FILE_NAME=chef-client-11.4.0-1.windows.msi
	set URL=http://opscode-omnitruck-release.s3.amazonaws.com/windows/2008r2/x86_64/%FILE_NAME%
	set FILE=%DOWNLOAD_DIR%\%FILE_NAME%

	call util.bat download "%URL%" "%FILE%"
	start msiexec /i "%FILE%" /passive
exit /b
