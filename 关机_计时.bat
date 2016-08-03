@echo off
:f0
set /p item=输入 1-设置定时 2-取消定时 3-重启电脑 4-退出：
if 1==%item% goto f1 
if 2==%item% goto f2 
if 3==%item% goto f3 
if 4==%item% geto f4
:f1
echo 提示：系统进入休眠后将无法执行关机，如果需要长时间定时，请先关闭休眠
set /p timeS=定时 xxx 秒:
shutdown -s -t %timeS%
echo 设置成功
goto f0
:f2
shutdown -a
echo 设置成功
goto f0
:f3
shutdown -r -t 0
:f4
exit