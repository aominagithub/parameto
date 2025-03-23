@echo off
set version=v2.021
set info=For Development Purposes Only.
if "%1" == "/help" (
     echo Parameto %version% %info%
     echo /dfo [Folder Name] - Delete Folder.
     echo /cfo [Folder Name] - Create Folder.
     echo /run [RunnerName] - Run [RunnerName].
     echo /ok [argument] - show argument
     echo /powershell [Command] - Run [Command] As Power Shell.
     echo /cfi [File Name] [File Size] - Create Files.
     echo /dfi [File Name] - Delete Files.
     echo /date - show date
     echo /time - show time
     echo /modify_date - edit date
     echo /modify_time - edit time
     echo You can use 1 parametors.
) else (
     echo Unknown Command. See /help
)

if "%1" == "/cfi" (
     echo Parameto %version% %info%
     fsutil file createnew %2 %3 >nul
     echo Created Files Successfully.
)

if "%1" == "/dfo" (
     echo Parameto %version% %info%
     rd /s /q %2
     echo Folder Deleted Successfully.
) 

if "%1" == "/cfo" (
     echo Parameto %version% %info%
     mkdir %2
     echo Folder Created Successfully.
)

if "%1" == "/run" (
     echo Parameto %version% %info%
     start %2
     echo Started Successfully.
)

if "%1" == "/ok" (
     echo %2
)

if "%1" == "/powershell" (
     echo Parameto %version% %info%
     powershell %2
     echo Runned Successfully.
)

if "%1" == "/dfi" (
     echo Parameto %version% %info%
     del /s /q %2
     echo File Deleted Successfully.
)

if "%1" == "/date" (
     echo %date%
)

if "%1" == "/time" (
     echo %time%
)

if "%1"  == "/modify_date" (
     date %2
     echo Successfully.
)

if "%1" == "/modify_time" (
     time %2
     echo Successfully.
) 