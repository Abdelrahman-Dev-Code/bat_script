@echo off
:Loop
cls
echo Sending reminder...
msg * "تنبيه: الرجاء مراجعة النظام الحركي للعمليات!"

:: الانتظار لمدة 10 ثوانٍ قبل تكرار الرسالة
timeout /t 10 /nobreak
shutdoen

goto Loop