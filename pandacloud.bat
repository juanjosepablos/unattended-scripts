:: OPTIONAL: Panda Cloud
:: HOME: http://www.cloudantivirus.com/
:: URL|ALL|http://acs.pandasoftware.com/cloud/CloudAntivirus.exe|packages/pandacloud/CloudAntivirus-2.3.exe
:: URL|ALL|http://www.rarlab.com/rar/wrar501.exe|packages/pandacloud/unrar-x86.exe
:: URL|ALL|http://www.rarlab.com/rar/winrar-x64-501.exe|packages/pandacloud/unrar-AMD64.exe

@echo off
:: FIXME Productlanguage is in spanish
IF [%PROCESSOR_ARCHITECTURE%]==[x86] SET PANDA_MSI=%TEMP%\PandaCloud\PandaCloudAntivirus_x86.msi
IF [%PROCESSOR_ARCHITECTURE%]==[AMD64] SET PANDA_MSI=%TEMP%\PandaCloud\PandaCloudAntivirus_x64.msi


:: 1.5.2
::todo.pl "%TEMP%\PandaCloud\PandaCloudAntivirus_x86.msi /qb ANALISISDISABLE=1 INSTALLDIR=\"%PROGRAMFILES%\Panda Security\Panda Cloud Antivirus\"  ProductLanguage=1034 ALLOWINFOPANDA=true REBOOT=r SETUPEXEDIR=%TEMP%\PandaCloud\ CURRENTDIRECTORY=%TEMP%\PandaCloud"

todo.pl "%PANDA_MSI% /qb INSTALLDIR=\"%PROGRAMFILES%\Panda Security\Panda Cloud Antivirus\" ProductLanguage=1034 SETUPEXEDIR=%TEMP%\PandaCloud\ CURRENTDIRECTORY=%TEMP%\PandaCloud"

:: Uncompress the program
todo.pl "%TEMP%\pandacloud\unrar.exe x %Z%\packages\pandacloud\cloudantivirus-2.3.exe %TEMP%\PandaCloud" 

:: For panda 2.3 we need rar formar 5.0 7-zip does not support it yet.
todo.pl "\"%ProgramFiles%\7-Zip\7z.exe\" x -y -o%TEMP%\PandaCloud %Z%\packages\pandacloud\unrar-%PROCESSOR_ARCHITECTURE%.exe UnRAR.exe"

:: Delete just in case is a reinstall or old version
todo.pl "del /Q /S %TEMP%\PandaCloud"

:: Install 7zip if it isn't already
todo.pl 7-zip.bat

