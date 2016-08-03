@echo off
setlocal enabledelayedexpansion
set /p type=输入后缀名:
dir /b *!type!> nameList.txt
for /f "delims=" %%i in (nameList.txt) do (
@echo 原文件名：%%i
set /p m=输入新名字:
if "!m!" neq "" (ren "%%i" "!m!.mp4"
@echo 修改成功)
)
