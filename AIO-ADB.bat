@echo off

:menu
cls
echo Choose an option:
echo 1. Invoke pltf.bat
echo 2. Invoke usbdrv.bat
echo 3. Invoke AIO-ADB.bat
echo 4. Exit

set /p choice="Enter your choice: "

if "%choice%"=="1" (
    call :invoke_pltf
) else if "%choice%"=="2" (
    call :invoke_usbdrv
) else if "%choice%"=="3" (
    call :invoke_aio_adb
) else if "%choice%"=="4" (
    exit
) else (
    echo Invalid choice. Please try again.
    pause
    goto :menu
)

exit /b

:invoke_pltf
REM Fetching pltf.bat from GitHub
echo Downloading pltf.bat...
curl -o pltf.bat https://raw.githubusercontent.com/username/repository/main/pltf.bat

REM Executing pltf.bat
echo Invoking pltf.bat...
call pltf.bat
exit /b

:invoke_usbdrv
REM Fetching usbdrv.bat from GitHub
echo Downloading usbdrv.bat...
curl -o usbdrv.bat https://raw.githubusercontent.com/username/repository/main/usbdrv.bat

REM Executing usbdrv.bat
echo Invoking usbdrv.bat...
call usbdrv.bat
exit /b

:invoke_aio_adb
REM Fetching AIO-ADB.bat from GitHub
echo Downloading AIO-ADB.bat...
curl -o AIO-ADB.bat https://raw.githubusercontent.com/Its-Ashu/GO-ADB/main/AIO-ADB.bat

REM Executing AIO-ADB.bat
echo Invoking AIO-ADB.bat...
call AIO-ADB.bat
exit /b
@echo off

:menu
cls
echo Choose an option:
echo 1. Invoke pltf.bat
echo 2. Invoke usbdrv.bat
echo 3. Invoke AIO-ADB.bat
echo 4. Exit

set /p choice="Enter your choice: "

if "%choice%"=="1" (
    call :invoke_pltf
) else if "%choice%"=="2" (
    call :invoke_usbdrv
) else if "%choice%"=="3" (
    call :invoke_aio_adb
) else if "%choice%"=="4" (
    exit
) else (
    echo Invalid choice. Please try again.
    pause
    goto :menu
)

exit /b

:invoke_pltf
REM Fetching pltf.bat from GitHub
echo Downloading pltf.bat...
curl -o pltf.bat https://raw.githubusercontent.com/username/repository/main/pltf.bat

REM Executing pltf.bat
echo Invoking pltf.bat...
call pltf.bat
exit /b

:invoke_usbdrv
REM Fetching usbdrv.bat from GitHub
echo Downloading usbdrv.bat...
curl -o usbdrv.bat https://raw.githubusercontent.com/username/repository/main/usbdrv.bat

REM Executing usbdrv.bat
echo Invoking usbdrv.bat...
call usbdrv.bat
exit /b

:invoke_aio_adb
REM Fetching AIO-ADB.bat from GitHub
echo Downloading AIO-ADB.bat...
curl -o AIO-ADB.bat https://raw.githubusercontent.com/Its-Ashu/GO-ADB/main/AIO-ADB.bat

REM Executing AIO-ADB.bat
echo Invoking AIO-ADB.bat...
call AIO-ADB.bat
exit /b
