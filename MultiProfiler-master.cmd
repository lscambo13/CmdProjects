@echo off

title Windows game (Multi-Profile Launcher)
:main
color 0e
cls

echo+
echo /*   a Windows game   */
ECHO+
echo ### 1.. User 1st
echo ### 2.. User 2nd
echo+
set /p ch=~~~ Who are you?: 

echo+
if (%ch%)==(1) goto :1
if (%ch%)==(2) goto :2

color 0c
echo+
echo Sorry, You are not authorized to play the game.
echo+
pause>nul
goto :main

:1
color 0e
set /p lp=~~~ ENTER THE PASSWORD: 
if (%lp%)==(password) goto :1p
cls 

color 0c
echo+
echo+
echo ####### Password Incorrect! 
echo+
echo+
pause>nul
goto :1

:1p
attrib -h "C:\Users\Amritpal\Documents\lovely"
if exist "C:\Users\Amritpal\Documents\lovely\lovely's.txt" ren "C:\Users\Amritpal\Documents\Criterion Games" "money" & ren "C:\Users\Amritpal\Documents\lovely" "Criterion Games"
attrib +h "C:\Users\Amritpal\Documents\money"
start NFS13.exe

cls
echo+
echo+
echo Starting Engine, Fasten your seatbelt 1st User....
echo+
echo+
echo+
timeout /t 5 /nobreak
exit

:2
color 0e
set /p mp=~~~ ENTER THE PASSWORD: 
if (%mp%)==(password) goto :2p
cls 
color 0c
echo+
echo+
echo ####### Password Incorrect! 
echo+
echo+
pause>nul
goto :2

:2p
attrib -h "C:\Users\Amritpal\Documents\money"
if exist "C:\Users\Amritpal\Documents\money\money's.txt" ren "C:\Users\Amritpal\Documents\Criterion Games" "lovely" & ren "C:\Users\Amritpal\Documents\money" "Criterion Games"
attrib +h "C:\Users\Amritpal\Documents\lovely"
start application.exe
cls

echo+
echo+
echo Starting Engine, Fasten your seatbelt 2nd User....
echo+
echo+
echo+
timeout /t 5 /nobreak

exit
