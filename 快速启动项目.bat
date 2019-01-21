cls 
@ECHO OFF 
SET NET_CORE_64=https://dotnet.microsoft.com/download/thank-you/dotnet-sdk-2.2.102-windows-x64-installer
SET NET_CORE_32=https://dotnet.microsoft.com/download/thank-you/dotnet-sdk-2.2.102-windows-x86-installer
SET REACT=Precise-Antd
SET Core=Precise-Core
SET Web=Precise.Web.Host
color 0a 
TITLE ��Ŀ�������� by:zyp
GOTO MENU 
:MENU 
CLS 
ECHO. 
ECHO. * * * * ASP.NET Boilerplate + React + Ant Design Pro �������� * * *  
ECHO. 
ECHO. 0 ����.NET Core 2.2.102
ECHO. 
ECHO. 1 ����API
ECHO. 
ECHO. 2 ����React
ECHO. 
ECHO. 3 ����API+React
ECHO. 
ECHO. 4 ɾ��Bin��Obj�ļ���
ECHO. 
ECHO. 5 �鿴��ǰ.NET Core�汾
ECHO. 
ECHO. 6 �� ��
ECHO.  
ECHO. * * * * * * * * * * * * * ** * * * * * * ** * * * * * * ** * * * * * 
ECHO. 
ECHO.��������Ҫ�����ı�ţ� 
set /p ID= 
IF "%id%"=="0" GOTO download 
IF "%id%"=="1" GOTO startapi 
IF "%id%"=="2" GOTO startreact 
IF "%id%"=="3" GOTO startapireact
IF "%id%"=="4" GOTO deletebinobj
IF "%id%"=="5" GOTO netcoreversion
IF "%id%"=="6" EXIT 
PAUSE 
:download 
ECHO. 
ECHO.����Nginx...... 
ECHO. 1 ����64λ
ECHO. 
ECHO. 2 ����32λ
ECHO.
ECHO. 3 �� ��
ECHO.
set /p ID= 
IF "%id%"=="1" GOTO NETCORE64 
IF "%id%"=="2" GOTO NETCORE32 
IF "%id%"=="3" GOTO MENU
ECHO. 
PAUSE 
GOTO MENU
:NETCORE64 
ECHO. 
ECHO.��������վ...... 
start %NET_CORE_64%
ECHO. 
ECHO.������......
ECHO.������������а�װ......
ECHO. 
PAUSE 
GOTO MENU
:NETCORE32 
ECHO. 
start %NET_CORE_32%
ECHO. 
PAUSE 
GOTO MENU
:startapi 
ECHO. 
ECHO.��������API......
START cmd /k "CD %Core%&&dotnet restore&&dotnet build&&cd %Web%&&dotnet run"
ECHO.������......
ECHO. 
PAUSE 
GOTO MENU
:startreact 
ECHO. 
ECHO.��������React......
if exist %REACT%/node_modules (
	START cmd /k "CD %REACT%&&npm start"
) else (
	START cmd /k "CD %REACT%&&npm install&&npm start"
)
ECHO.������......
ECHO. 
PAUSE 
GOTO MENU
:startapireact 
ECHO. 
ECHO.��������......
START cmd /k "CD %Core%&&dotnet restore&&dotnet build&&cd %Web%&&dotnet run"
if exist %REACT%/node_modules (
	START cmd /k "CD %REACT%&&npm start"
) else (
	START cmd /k "CD %REACT%&&npm install&&npm start"
)
ECHO.������......
ECHO. 
:deletebinobj 
ECHO. 
ECHO.����ɾ��......
FOR /d /r . %%d in (bin,obj) DO (
	IF EXIST "%%d" (		 	 
		ECHO %%d | FIND /I "\node_modules\" > Nul && ( 
			ECHO.Skipping: %%d
		) || (
			ECHO.Deleting: %%d
			rd /s/q "%%d"
		)
	)
)
ECHO.ɾ�����......
ECHO.
PAUSE
GOTO MENU
:netcoreversion
ECHO. 
ECHO.��ǰʹ�õİ汾�ǣ�
dotnet --version
ECHO.
PAUSE
GOTO MENU






