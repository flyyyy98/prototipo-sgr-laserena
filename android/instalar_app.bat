@echo off
title Instalador SGR La Serena APK
echo ========================================================
echo   INSTALADOR SGR LA SERENA - APK ANDROID OFICIAL
echo ========================================================
echo.
echo Conecte su telefono Android por USB con Depuracion USB activada
echo o asegurese de tener un emulador Android (como Pixel 5) abierto.
echo.
pause
echo Instalando sgr-laserena-debug.apk...
"%LOCALAPPDATA%\Android\Sdk\platform-tools\adb.exe" install -r "%~dp0sgr-laserena-debug.apk"
if %errorlevel% equ 0 (
    echo.
    echo ========================================================
    echo   APLICACION INSTALADA EXITOSAMENTE EN SU DISPOSITIVO!
    echo ========================================================
    echo Iniciando aplicacion...
    "%LOCALAPPDATA%\Android\Sdk\platform-tools\adb.exe" shell monkey -p com.example.sgrlaserena -c android.intent.category.LAUNCHER 1
) else (
    echo.
    echo [AVISO]: No se detecto un dispositivo ADB conectado por USB.
    echo Puede copiar el archivo "sgr-laserena-debug.apk" directamente
    echo a su telefono Android por WhatsApp, Google Drive o USB e
    echo instalarlo tocando sobre el archivo.
)
echo.
pause
