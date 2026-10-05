@echo off
msg * "cleaning your system"
echo cleaning up your system 
tasklist >  D:\Bprocess.txt
taskkill /IM chrome.exe /f
tasklist > D:\Aprocess.txt
pause