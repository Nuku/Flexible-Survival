@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
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
:--------------------------------------

echo [INFO] Starting...

echo [INFO] Making symlink for .ctags in User folder
fsutil reparsepoint query "%HOMEPATH%\.ctags" | find "Symbolic Link" >nul && (
  echo [INFO]   Removing existing symlink...
  del "%HOMEPATH%\.ctags"
) || (
  echo [INFO]   Backing up .ctags
  move /Y "%HOMEPATH%\.ctags" "%HOMEPATH%\.ctags_old"
)
mklink "%HOMEPATH%\.ctags" "%HOMEPATH%\Documents\Github\Flexible-Survival\.ctags"

echo [INFO] Making symlink for .story.ni in Inform folder
fsutil reparsepoint query "%HOMEPATH%\Documents\Inform\Projects\Flexible Survival.inform\Source\story.ni" | find "Symbolic Link" >nul && (
  echo [INFO]   Removing existing symlink...
  del "%HOMEPATH%\Documents\Inform\Projects\Flexible Survival.inform\Source\story.ni"
) || (
  echo [INFO]   Backing up story.ni
  move /Y "%HOMEPATH%\Documents\Inform\Projects\Flexible Survival.inform\Source\story.ni" "%HOMEPATH%\Documents\Inform\Projects\Flexible Survival.inform\Source\story_old.ni"
)
mklink "%HOMEPATH%\Documents\Inform\Projects\Flexible Survival.inform\Source\story.ni" "%HOMEPATH%\Documents\Github\Flexible-Survival\Inform\story.ni"

echo [INFO] Making symlink for .gblorb in Program Files folder
fsutil reparsepoint query "%PROGRAMFILES(X86)%\Silver Games LLC\flexible\Flexible Survival\Release\Flexible Survival.gblorb" | find "Symbolic Link" >nul && (
  echo [INFO]   Removing existing symlink...
  del "%PROGRAMFILES(X86)%\Silver Games LLC\flexible\Flexible Survival\Release\Flexible Survival.gblorb"
) || (
  echo [INFO]   Backing up .gblorb
  move /Y "%PROGRAMFILES(X86)%\Silver Games LLC\flexible\Flexible Survival\Release\Flexible Survival.gblorb" "%PROGRAMFILES(X86)%\Silver Games LLC\flexible\Flexible Survival\Release\Flexible Survival_old.gblorb"
)
mklink "%PROGRAMFILES(X86)%\Silver Games LLC\flexible\Flexible Survival\Release\Flexible Survival.gblorb" "%HOMEPATH%\Documents\Inform\Projects\Flexible Survival.materials\Release\Flexible Survival.gblorb"

echo [INFO] Making Flexible Survival.materials folder in Inform folder
mkdir "%HOMEPATH%\Documents\Inform\Projects\Flexible Survival.materials"

echo [INFO] Making symlink for Figures folder in Inform folder
rmdir /S /Q "%HOMEPATH%\Documents\Inform\Projects\Flexible Survival.materials\Figures"
mklink /D "%HOMEPATH%\Documents\Inform\Projects\Flexible Survival.materials\Figures" "%HOMEPATH%\Documents\Github\Flexible-Survival\Figures"

echo [INFO] Making symlink for all folders that are not Inform or Figures into the Inform extensions folder
for /d %%D in (*) do (
  IF "%%D"=="Inform" (
    echo [INFO]   * Skipping Inform folder
  ) ELSE (
    IF "%%D"=="Flexible Infection" (
      echo [INFO]   * Skipping Flexible Infection folder
    ) ELSE (
      IF "%%D"=="Figures" (
        echo [INFO]   * Skipping Figures folder
      ) ELSE (
        echo [INFO]   Making symlink for %%D
        rmdir /S /Q "%HOMEPATH%\Documents\Inform\Extensions\%%D"
        mklink /D "%HOMEPATH%\Documents\Inform\Extensions\%%D" "%HOMEPATH%\Documents\Github\Flexible-Survival\%%D"
      )
    )
  )
)

pause
