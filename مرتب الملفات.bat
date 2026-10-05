@echo off
title Automatic File Organizer
cls
echo Organizing current directory...

:: إنشاء المجلدات إذا لم تكن موجودة
if not exist "PDF_Documents" mkdir "PDF_Documents"
if not exist "Images" mkdir "Images"
if not exist "Compressed_Files" mkdir "Compressed_Files"
if not exist "batch_files" mkdir "batch_files"

:: نقل الملفات بناءً على نوعها
move *.pdf "PDF_Documents" >nul 2>&1
move *.jpg "Images" >nul 2>&1
move *.png "Images" >nul 2>&1
move *.zip "Compressed_Files" >nul 2>&1
move *.rar "Compressed_Files" >nul 2>&1
move *.bat "batch_files" >nul 2>&1
echo Directory Organized Successfully!
pause