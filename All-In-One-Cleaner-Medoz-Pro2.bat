:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
@echo
echo Batch File By MedozPro (t.me/medozbins)
@echo
net stop SysMain
@echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f
@echo

echo Batch File 4 By MedozPro (t.me/medozbins)
------------------------------
@echo off
echo Batch File 1 By MedozPro (t.me/medozbins)
RD /S /Q %temp%
MKDIR %temp%
@echo
takeown /f "%temp%" /r /d y
@echo
takeown /f "C:\Windows\Temp" /r /d y
@echo
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
@echo
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y

echo Batch File 2 By MedozPro (t.me/medozbins)

@echo off
cd/
@echo
del *.log /a /s /q /f

echo Batch File 3 By MedozPro (t.me/medozbins)

@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
@echo
echo Batch File By MedozPro (t.me/medozbins)
@echo
net stop SysMain
@echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f
@echo

echo Batch File 4 By MedozPro (t.me/medozbins)

@echo off
echo Batch File By MedozPro (t.me/medozbins)
@echo
net stop wuauserv
@echo
net stop UsoSvc
@echo
net stop bits
@echo
net stop dosvc
@echo
echo Deleting Windows Update Files
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution

echo Batch File 5 By MedozPro (t.me/medozbins)

@echo off
@echo
ipconfig /flushdns
@echo


echo Batch File 6 By MedozPro (t.me/medozbins)

@echo off
if not “%1” == “max” start /MAX cmd /c %0 max & exit/b
echo.
echo Cleaning system junk files, please wait . . .
echo.
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q “%userprofile%\Local Settings\Temporary Internet Files\*.*”
del /f /s /q “%userprofile%\Local Settings\Temp\*.*”
del /f /s /q “%userprofile%\recent\*.*”
ipconfig /flushdns
echo.
echo Junk files clean is finished!
echo. & pause



