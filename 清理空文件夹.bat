@echo off
rem chcp 65001
echo ����ɾ����ǰĿ¼����Ŀ¼�����еĿ��ļ��У����Ժ�......
echo -------------------------------------------------------------
cd. > listnull.txt
for /f "delims=" %%a in ('dir /ad /b /s') do (
	dir /b "%%a" | findstr .>nul || echo %%a >> listnull.txt
)
set /a sum=0
for /f "tokens=*" %%i in (listnull.txt) do (
	rd /q "%%i"
	echo �ɹ�ɾ����Ŀ¼��%%i
	set /a sum=sum+1
)
del listnull.txt /f /q
echo -------------------------------------------------------------
echo ���ɹ�ɾ��%cd%Ŀ¼������Ŀ¼��%sum%�����ļ���
pause