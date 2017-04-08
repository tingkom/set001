rem *******************************Code Start*****************************
@echo off

set "Ymd=%date:~,4%%date:~5,2%%date:~8,2%"
D:\mysql-5.6.26-win32\bin\mysqldump --opt -u root --password=123456 drawback01 > D:\database\backup\drawback01_%Ymd%.sql
@echo on
rem *******************************Code End*****************************
