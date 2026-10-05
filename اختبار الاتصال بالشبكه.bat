@echo off
title Network Diagnostics Tool
echo ===================================================
echo [OS Networking Lab - Diagnostics]
echo ===================================================
echo.
echo 1. Displaying your Local IP Configuration:
ipconfig | findstr "IPv4"
echo ---------------------------------------------------
echo.
echo 2. Testing connection to Google DNS (8.8.8.8)...
ping 8.8.8.8 -n 3
echo.
echo Diagnostics finished!
pause