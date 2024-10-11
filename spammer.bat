@echo off
:spam
set ip=%1
set text=%2
msg * /SERVER:%ip% %text%
goto :eof

:looper
set ip=%1
set text=%2
msg * /SERVER:%ip% %text%
goto :looper

if %1=="" echo "Usage: spammer.bat <ip> <text> <count (0=infinite)>"
if %2=="" echo "Usage: spammer.bat <ip> <text> <count (0=infinite)>"
if %3=="" echo "Usage: spammer.bat <ip> <text> <count (0=infinite)>"
if %1=="help" echo "Usage: spammer.bat <ip> <text> <count (0=infinite)>"
if %1=="/help" echo "Usage: spammer.bat <ip> <text> <count (0=infinite)>"
if %1=="-help" echo "Usage: spammer.bat <ip> <text> <count (0=infinite)>"
if %1=="-h" echo "Usage: spammer.bat <ip> <text> <count (0=infinite)>"
if %1=="/h" echo "Usage: spammer.bat <ip> <text> <count (0=infinite)>"


if %3==0 call looper %1 %2
if %3>0 for /L %%i=1 in (1, 1, %3) call spam %1 %2
