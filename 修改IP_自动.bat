@echo off 

echo 正在设置IP及子网掩码
cmd /c netsh interface ip set address name="本地连接" source=static addr=222.199.192.37 mask=255.255.255.0 gateway=222.199.192.1 gwmetric=1
echo 正在设置DNS服务器
cmd /c netsh interface ip set dns name="本地连接" source=static addr=202.204.48.8 register=primary
netsh interface ip add dns name="本地连接" address=202.204.60.10

echo IP地址已经设定修改完毕，按任意键关闭此窗口 
pause
ipconfig/all
pause