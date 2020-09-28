@ECHO OFF
cd "E:\Vanier College\Block_4\C++\LAB\Project\LibraryManagementSystem\SmartLibrary\bin\Debug"
del lms.db 2>nul
SmartLibrary.exe < ..\..\..\testcases\1sup_membership.txt > output.txt 
SmartLibrary.exe < ..\..\..\testcases\2add_book.txt >> output.txt 
SmartLibrary.exe < ..\..\..\testcases\5sell_book.txt >> output.txt 
SmartLibrary.exe < ..\..\..\testcases\6borrow_book.txt >> output.txt 
SmartLibrary.exe < ..\..\..\testcases\8req_return.txt >> output.txt
SET OUTPUT_LMS=0
for /f %%i in ('findstr /c:"wrong" output.txt ^| find /c ":"') do set OUTPUT_LMS=%%i
@ECHO ON
if %OUTPUT_LMS%==0 (echo "Test cases passed") else (echo "Test cases failed")



