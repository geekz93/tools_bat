@echo off
setlocal enabledelayedexpansion
set /p type=�����׺��:
dir /b *!type!> nameList.txt
for /f "delims=" %%i in (nameList.txt) do (
set "str=%%i"
::ɾ�����ٸ��ַ�
ren "%%i" "!str:~2!"
)
@echo �޸ĳɹ�
pause