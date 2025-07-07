@echo off
echo 🚀 جاري تحديث الموقع على GitHub...

:: الانتقال إلى مجلد المشروع (عدّله إذا كان مختلفًا)
cd /d "C:\Users\basem\OneDrive\Desktop\Gaz"

:: إضافة جميع التعديلات
git add .

:: إنشاء commit مع التاريخ والوقت تلقائيًا
for /f %%i in ('powershell -Command "Get-Date -Format yyyy-MM-dd_HH:mm:ss"') do set timestamp=%%i
git commit -m "تحديث تلقائي %timestamp%"

:: رفع التعديلات
git push origin master

echo ✅ تم التحديث بنجاح!
pause
