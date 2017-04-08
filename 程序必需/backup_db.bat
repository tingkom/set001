rem *******************************Code Start*****************************
@echo off

set "Ymd=%date:~,4%%date:~5,2%%date:~8,2%"
E:\database\mysql-5.6.24-win32\bin\mysqldump --opt -u root --password=123456 drawback01 > E:\database\backup\drawback01_%Ymd%.sql
@echo on
rem *******************************Code End*****************************
