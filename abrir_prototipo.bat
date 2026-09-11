@echo off
title Plataforma Municipal La Serena - Prototipo SGR
cls
echo ======================================================================
echo    ILUSTRE MUNICIPALIDAD DE LA SERENA - PLATAFORMA TERRITORIAL SGR
echo    Convenio Academico INACAP 2026 - Primera Entrega Oficial
echo ======================================================================
echo.

set "NODE_PATH=C:\Program Files\nodejs;%PATH%"

echo [1/2] Verificando Servidor Web Oficial Next.js (http://localhost:3000)...
powershell -NoProfile -ExecutionPolicy Bypass -Command "$p = Get-NetTCPConnection -LocalPort 3000 -ErrorAction SilentlyContinue; if ($p) { Start-Process 'http://localhost:3000'; exit 0 } else { exit 1 }"
if %errorlevel% equ 0 (
    echo    -> Plataforma en linea en http://localhost:3000
    goto final
)

echo [2/2] Abriendo Prototipo Autonomo Local (index.html)...
start "" "%~dp0index.html"

:final
echo.
echo ======================================================================
echo    PROTOTIPO ABIERTO CORRECTAMENTE EN EL NAVEGADOR
echo ======================================================================
pause
