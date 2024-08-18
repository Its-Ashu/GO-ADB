@echo off

REM Creating temporary directory
mkdir C:\.tmp
color 07
title Google USB Driver Installer by @its-ashu-otf

REM Downloading USB driver zip file
echo Downloading USB driver zip file...
curl -OJL https://dl.google.com/android/repository/usb_driver_r13-windows.zip

REM Extracting USB driver zip file
echo Extracting USB driver...
powershell Expand-Archive -LiteralPath usb_driver_r13-windows.zip -DestinationPath C:\.tmp

REM Installing USB driver
echo Installing USB driver...
for /r C:\.tmp\usb_driver\ %%G in (*.inf) do (
    pnputil.exe /add-driver "%%G" /install
)

REM Cleaning up temporary directory
echo Cleaning up temporary directory...
rmdir /s /q C:\.tmp

echo USB driver installation complete.
pause
