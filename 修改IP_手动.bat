@echo off
echo 对于不同电脑可能需要修改网络适配器的名称

:f0
set /p item=输入 1-修改IP 2-恢复DHCP 3-退出：
if 1==%item% goto f1
if 2==%item% goto f2
if 3==%item% goto f3
:f1
set /p ip=输入ip号（2~255）:
cmd /c netsh interface ip set address name="本地连接" source=static addr=222.199.192.%ip% mask=255.255.255.0 gateway=222.199.192.1 gwmetric=1
echo IP地址修改完毕
goto f0
:f2
netsh interface ip set address name="本地连接" source=dhcp
netsh interface ip set dns name="本地连接" source=dhcp
echo 恢复成功
goto f0
:f3
exit

