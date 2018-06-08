@echo off
echo [INFO] Starting...
echo [INFO] Backing up .ctags to .ctags_old in user folder
copy /Y "%HOMEPATH%\.ctags" "%HOMEPATH%\.ctags_old"
echo [INFO] Copying .ctags to user folder
copy /Y ".ctags" "%HOMEPATH%\.ctags"
echo [INFO] Backing up story.ni to story_old.ni in Inform project folder
copy /Y "%HOMEPATH%\Documents\Inform\Projects\Flexible Survival.inform\Source\story.ni" "%HOMEPATH%\Documents\Inform\Projects\Flexible Survival.inform\Source\story_old.ni"
echo [INFO] Copying story.ni to Inform project folder
copy /Y "Inform\story.ni" "%HOMEPATH%\Documents\Inform\Projects\Flexible Survival.inform\Source\story.ni"

echo [INFO] Copying Figures folder to Inform project folder
xcopy /I /Q /Y "Figures" "%HOMEPATH%\Documents\Inform\Projects\Flexible Survival.materials\Figures"

echo [INFO] Copying all folders into the Inform extensions folder that are not Inform or Figures
for /d %%D in (*) do (
  IF "%%D"=="Inform" (
    echo [INFO]   * Skipping Inform folder
  ) ELSE (
    IF "%%D"=="Figures" (
      echo [INFO]   * Skipping Figures folder
    ) ELSE (
      echo [INFO]   Copying %%D
      xcopy /I /Q /Y "%%D" "%HOMEPATH%\Documents\Inform\Extensions\%%D"
    )
  )
)

echo [INFO] Done!
pause
