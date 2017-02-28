title Compilador UXMB PSP
@ECHO OFF

set ms1=.Lua

set directorio=C:\Users\%USERNAME%\Desktop\UXMB-Compiled

set recovery=uxmb_recovery.lua
set recovery2=uxmb_recovery.pacme
set bootup=bootup.lua

echo.
echo ------------------------------------------------------------
echo                Bienvenido al
echo       Compilador del Homebrew de UXMB
echo ------------------------------------------------------------
echo.

echo.
echo Presione cualquier tecla para cambiar compilar los archivos %ms1%
echo (Todos los archivos compilados se moveran a una carpeta externa.)
echo.

echo.
echo.
echo archivos: - %recovery%
echo.          - %bootup%
echo.

pause

ren %recovery% uxmb_recovery.pacme


echo.
echo.
echo todo listo, ahora a copiar a la carpeta externa
echo.
echo.

pause

xcopy * %directorio%

echo.
echo.
echo todo ok! ahora a devolver todos los decompilados.
echo.
echo.

pause

ren %recovery2% uxmb_recovery.lua

echo.
echo.
echo listo!! ahora si ya puedes cerrar este compilador con cualquier tecla!
echo.
echo.

pause

exit /b