@echo off
@echo ע����ԭ�ȵ������滻��
pause
setlocal enabledelayedexpansion
::set "type=mp4"
set /p type=�����׺��:
dir /b *!type!> nameList.txt
set /a v=0
for /f "delims=" %%i in (nameList.txt) do (
set /a v += 1
ren "%%i" "!v!.!type!"
)
@echo �޸ĳɹ�
pause