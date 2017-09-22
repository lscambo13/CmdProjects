@echo off
:start
title Power Utility
color 0a
echo.
echo Power Utility v0.1 (Power in One Place)
echo.
echo   1. Metro Style Shutdown (Windows 8.1)
echo   2. Old Style Shutdown
echo   3. Restart System
echo   4. Hibernate System
echo.
echo   5. About
echo.
echo.
set /p o=Please Write The No. Of Your Choice: 
echo.
echo You've Entered %o%
set /p r=If Its Right Then Press Enter or Write " No " To Retry: 
if (%r%)==(no) cls goto :start
if (%o%)==(exit) exit
if (%o%)==(1) goto :1
if (%o%)==(2) goto :2
if (%o%)==(3) goto :3
if (%o%)==(4) goto :4
if (%o%)==(5) goto :5
cls
echo.
echo %o% Is Not Valid Option
echo.
pause
cls
goto :start
:1
cls
echo.
set /p t=Type The No Of Mins In You Want To Shutdown Your Pc: 
echo.
set /a sec=60*(%t%)
echo Metro Style Shutdown Will Start In %t% Mins
timeout /t %sec%
slidetoshutdown
exit
:2
cls
echo.
set /p t=Type The No Of Mins In You Want To Shutdown Your Pc: 
echo.
set /a sec=60*(%t%)
echo System Will Shutdown In %t% Mins
shutdown /s /t %sec%
exit
:3
cls
echo.
set /p t=Type The No Of Mins In You Want To Restart Your Pc: 
echo.
set /a sec=60*(%t%)
echo System Will Restart In %t% Mins
shutdown /r /t %sec%
exit
:4
cls
echo.
set /p t=Type The No Of Mins In You Want To Hibernate Your Pc: 
echo.
set /a sec=60*(%t%)
echo System Will Hibernate In %t% Mins
shutdown /h /t %sec%
exit
:5
cls
color 5f
echo.
echo                         Power Utility v0.1
echo                   Author: Mr. Lovely Singh aka lscambo
echo                      last updated on 28-jul-2013
echo.
echo HELP:       At Home Screen Write " exit " To Quit The Program.
echo             In Time Section Type " 0 " To Skip Waiting Time.
echo.
echo CONCEPTv0.2:  
echo             Sleep Option, Hybrid Shutdown, Log off (Sign out for 
echo           Windows 8 and 8.1), Abort Shutdown and Many extra features.
echo.
echo UPDATES:          http://somanythings4u.blogspot.com
echo                    http://youtube.com/user/lscambo13
echo.
echo        You can also e-mail me your suggestions at: ls.cambo13@gmail.com
pause >NUL
cls
goto :start
