@echo off
setlocal enabledelayedexpansion
set /p type=�����׺��:
dir /b *!type!> nameList.txt
for /f "delims=" %%i in (nameList.txt) do (
@echo ԭ�ļ�����%%i
set /p m=����������:
if "!m!" neq "" (ren "%%i" "!m!.mp4"
@echo �޸ĳɹ�)
)
