@echo off
setlocal enabledelayedexpansion
set /p type=输入后缀名:
dir /b *!type!> nameList.txt
for /f "delims=" %%i in (nameList.txt) do (
set "str=%%i"
::删除多少个字符
ren "%%i" "!str:~2!"
)
@echo 修改成功
pause