@echo off & setlocal EnableDelayedExpansion

:: BatchGotAdmin
:: -------------------------------------
REM --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if errorlevel 1 (
	echo Requesting administrative privileges...
	goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
exit /B

:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
:: --------------------------------------

set "INFORM_INSTALLDIR=%ProgramFiles(x86)%\Inform 7"
set "INFORM_BINDIR=%INFORM_INSTALLDIR%\Compilers"
set "INFORM_INTERNAL=%INFORM_INSTALLDIR%\Internal"
set "INFORM_DATADIR=%USERPROFILE%\Documents\Inform"
set "INFORM_FS=%INFORM_DATADIR%\Projects\Flexible Survival.inform"

:: Change this, if you've downloaded the 64 Bit ni.exe elsewhere
set "NI_64Bit=%INFORM_BINDIR%\ni64.exe"

:: Symlink story.ni
set "INFORM_FS_SOURCE=%INFORM_FS%\Source"
set "GITHUB_FS=%USERPROFILE%\Documents\Github\Flexible-Survival"
echo [INFO] Making symlink for story.ni in Inform folder
fsutil reparsepoint query "%INFORM_FS_SOURCE%\story.ni" >nul && (
	echo [INFO]   Removing existing symlink...
	del "%INFORM_FS_SOURCE%\story.ni"
) || (
	echo [INFO]   Backing up story.ni
	move /Y "%INFORM_FS_SOURCE%\story.ni" "%INFORM_FS_SOURCE%\story_old.ni"
)
mklink "%INFORM_FS_SOURCE%\story.ni" "%GITHUB_FS%\Inform\story.ni"

:: Build everything into a .gblorb
set "BUILD_OUTPUT=%INFORM_FS%\Build\output.gblorb"
"%NI_64Bit%" -release -internal "%INFORM_INTERNAL%" -project "%INFORM_FS%" -external "%INFORM_DATADIR%" -format=ulx
if errorlevel 1 (
	pause
	goto :eof
)
"%INFORM_BINDIR%\inform6.exe" -w~S~DG "%INFORM_FS%\Build\auto.inf" "%INFORM_FS%\Build\output.ulx"
"%INFORM_BINDIR%\cBlorb.exe" -windows "%INFORM_FS%\Release.blurb" "%BUILD_OUTPUT%"

:: --------------------------------------------
call :get_utc_time

:: Add leading zeros
set gmt_hour=0%gmt_hour%
set gmt_hour=%gmt_hour:~-2%
set gmt_minute=0%gmt_minute%
set gmt_minute=%gmt_minute:~-2%
set gmt_second=0%gmt_second%
set gmt_second=%gmt_second:~-2%
set gmt_day=0%gmt_day%
set gmt_day=%gmt_day:~-2%
set gmt_month=0%gmt_month%
set gmt_month=%gmt_month:~-2%

set DATESTAMP=%gmt_year%%gmt_month%%gmt_day%
set TIMESTAMP=%gmt_hour%%gmt_minute%
:: --------------------------------------------

:: Grab the installation path of FS
for /f "usebackq tokens=3*" %%a in (`reg query "HKLM\SOFTWARE\WOW6432Node\Silver Games LLC\flexible" /v "Path"`) do (
	set _FS_ROOT=%%a %%b
)
call :Trim _FS_ROOT_TRIMMED !_FS_ROOT!
set "FS_INSTALLDIR=%_FS_ROOT_TRIMMED%Flexible Survival\Release"

:: Copies the gblorb to the FS_INSTALLDIR and adds an UTC based timestamp
set "FS_GBLORB=Flexible Survival %DATESTAMP%-%TIMESTAMP%.gblorb"
set "BUILD_TARGET=%FS_INSTALLDIR%\%FS_GBLORB%"
copy /Y "%BUILD_OUTPUT%" "%BUILD_TARGET%"
goto :eof

:: --------------------------------------------
:get_utc_time
for /f "tokens=1,2 delims==" %%G in ('wmic path Win32_UTCTime get /value ^| find "="') do (call :setUTCvars %%G %%H)
goto :eof

:setUTCvars
set _var=%1
set _value=%2
set gmt_!_var!=!_value!
goto :eof

:Trim
set Params=%*
for /f "tokens=1*" %%a in ("!Params!") do set %1=%%b
goto :eof
:: --------------------------------------------
