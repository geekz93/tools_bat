@echo off
echo ���ڲ�ͬ���Կ�����Ҫ�޸�����������������

:f0
set /p item=���� 1-�޸�IP 2-�ָ�DHCP 3-�˳���
if 1==%item% goto f1
if 2==%item% goto f2
if 3==%item% goto f3
:f1
set /p ip=����ip�ţ�2~255��:
cmd /c netsh interface ip set address name="��������" source=static addr=222.199.192.%ip% mask=255.255.255.0 gateway=222.199.192.1 gwmetric=1
echo IP��ַ�޸����
goto f0
:f2
netsh interface ip set address name="��������" source=dhcp
netsh interface ip set dns name="��������" source=dhcp
echo �ָ��ɹ�
goto f0
:f3
exit

