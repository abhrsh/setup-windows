@echo off
pushd %~dp0
if "%LOG%"=="" set LOG=setup.log

if not "%~1"=="" call :%~1 "%~2" "%~3"

popd
goto :EOF

:download
	set URL=%~1
	set OUT_DIR=%~dp2
	set FILE=%~2

	if exist "%FILE%" (
		call :log "Already Downloaded. : %FILE%"
		exit /b 1
	)

	if not exist "%OUT_DIR%" mkdir "%OUT_DIR%"

	call :log "Downloading %URL% to %FILE%"
	powershell -ExecutionPolicy unrestricted -Command "(new-object net.webclient).DownloadFile('%URL%', '%FILE%')"
exit /b

:log
	echo %~1
	echo [%DATE% %TIME%] %~1 >> %LOG%
exit /b
