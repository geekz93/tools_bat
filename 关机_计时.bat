@echo off
:f0
set /p item=���� 1-���ö�ʱ 2-ȡ����ʱ 3-�������� 4-�˳���
if 1==%item% goto f1 
if 2==%item% goto f2 
if 3==%item% goto f3 
if 4==%item% geto f4
:f1
echo ��ʾ��ϵͳ�������ߺ��޷�ִ�йػ��������Ҫ��ʱ�䶨ʱ�����ȹر�����
set /p timeS=��ʱ xxx ��:
shutdown -s -t %timeS%
echo ���óɹ�
goto f0
:f2
shutdown -a
echo ���óɹ�
goto f0
:f3
shutdown -r -t 0
:f4
exit