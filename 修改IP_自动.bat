@echo off 

echo ��������IP����������
cmd /c netsh interface ip set address name="��������" source=static addr=222.199.192.37 mask=255.255.255.0 gateway=222.199.192.1 gwmetric=1
echo ��������DNS������
cmd /c netsh interface ip set dns name="��������" source=static addr=202.204.48.8 register=primary
netsh interface ip add dns name="��������" address=202.204.60.10

echo IP��ַ�Ѿ��趨�޸���ϣ���������رմ˴��� 
pause
ipconfig/all
pause