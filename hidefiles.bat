@echo off
title Interactive Private Vault
:Menu
cls
echo ===================================================
echo              SECURE DIGITAL VAULT SYSTEM
echo ===================================================
echo 1. Unlock Vault (Show Hidden Folder)
echo 2. Lock Vault (Hide Folder)
echo 3. Exit
echo.
set /p choice="Choose an option (1-3): "

if "%choice%"=="1" goto Unlock
if "%choice%"=="2" goto Lock
if "%choice%"=="3" exit
goto Menu

:Unlock
echo.
set /p pass="Enter Secret Password to UNLOCK: "
if "%pass%"=="123" (
    :: إنشاء المجلد إذا لم يكن موجوداً وإلغاء إخفائه من النظام
    if not exist "Private_Vault" mkdir "Private_Vault"
    attrib -h -s "Private_Vault"
    msg * "Vault Unlocked Successfully!"
    explorer.exe "Private_Vault"
) else (
    msg * "Wrong Password! Access Denied."
)
goto Menu

:Lock
if exist "Private_Vault" (
    :: إخفاء المجلد كملف نظام سري لا يظهر حتى مع خيار إظهار الملفات المخفية
    attrib +h +s "Private_Vault"
    msg * "Vault Locked and Hidden successfully!"
) else (
    msg * "Vault folder does not exist to lock."
)
goto Menu