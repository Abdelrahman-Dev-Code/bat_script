@echo off
title Project Scaffold Creator
cls
echo [Status]: Preparing a new structured project...

:: 1. إنشاء المجلدات الهيكلية للمشروع
if not exist "My_Project" mkdir "My_Project"
cd "My_Project"
if not exist "src" mkdir "src"
if not exist "docs" mkdir "docs"

:: 2. توليد ملف التوثيق التعريفي تلقائياً
echo # PROJECT INITIALIZED SUCCESS > docs\README.txt
echo Created on: %date% at %time% >> docs\README.txt

echo [Success]: Project directory structure generated!
explorer.exe .
pause