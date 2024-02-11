@echo off

REM Creating temporary directory
mkdir C:\.tmp

REM Downloading platform-tools zip file
echo Downloading platform-tools zip file...
curl -OJL https://dl.google.com/android/repository/platform-tools-latest-windows.zip

REM Extracting platform-tools zip file
echo Extracting platform-tools...
powershell Expand-Archive -LiteralPath platform-tools-latest-windows.zip -DestinationPath C:\.tmp
echo Cleaning-up
del /f /q platform-tools-latest-windows.zip
REM Moving platform-tools to C drive root and renaming to adb
echo Renaming platform-tools folder to adb...
move /Y C:\.tmp\platform-tools C:\adb

REM Adding adb to Environment Variable path
echo Adding adb to Environment Variable path...
setx PATH "%PATH%;C:\adb" /m

REM Cleaning up temporary directory
echo Cleaning up temporary directory...
rmdir /s /q C:\.tmp

echo Setup complete.
pause
