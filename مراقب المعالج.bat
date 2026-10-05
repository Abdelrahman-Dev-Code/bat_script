@echo off
title Memory & Process Auditor
echo ===================================================
echo [System Management Lab - Process Auditor]
echo ===================================================
echo.
echo Searching for active processes...
echo.
:: عرض العمليات وترتيبها وحفظها في ملف نصي على سطح المكتب
tasklist /v > "%userprofile%\Desktop\System_Processes_Report.txt"

echo Report Saved to Desktop successfully!
echo.
echo Opening the generated report...
timeout /t 3 >nul
start notepad.exe "%userprofile%\Desktop\System_Processes_Report.txt"
pause