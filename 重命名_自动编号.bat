@echo off
@echo 注意会把原先的名字替换掉
pause
setlocal enabledelayedexpansion
::set "type=mp4"
set /p type=输入后缀名:
dir /b *!type!> nameList.txt
set /a v=0
for /f "delims=" %%i in (nameList.txt) do (
set /a v += 1
ren "%%i" "!v!.!type!"
)
@echo 修改成功
pause