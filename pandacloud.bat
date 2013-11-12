:: OPTIONAL: Panda Cloud
:: HOME: http://www.cloudantivirus.com/
:: URL|ALL|http://acs.pandasoftware.com/cloud/CloudAntivirus.exe|packages/CloudAntivirus-2.2.exe

@echo off
:: FIXME Productlanguage is in spanish
:: FIXME x86/AMD64 Detection

:: 1.5.2
::todo.pl "%TEMP%\PandaCloud\PandaCloudAntivirus_x86.msi /qb ANALISISDISABLE=1 INSTALLDIR=\"%PROGRAMFILES%\Panda Security\Panda Cloud Antivirus\"  ProductLanguage=1034 ALLOWINFOPANDA=true REBOOT=r SETUPEXEDIR=%TEMP%\PandaCloud\ CURRENTDIRECTORY=%TEMP%\PandaCloud"

todo.pl "%TEMP%\PandaCloud\PandaCloudAntivirus_x86.msi /qb ANALISISDISABLE=1 INSTALLDIR=\"%PROGRAMFILES%\Panda Security\Panda Cloud Antivirus\"  ProductLanguage=1034 ALLOWINFOPANDA=true REBOOT=r SETUPEXEDIR=%TEMP%\PandaCloud\ CURRENTDIRECTORY=%TEMP%\PandaCloud"


:: Uncompress the program
todo.pl "\"%PROGRAMFILES%\7-Zip\7z\" x -y -o\"%TEMP%\PandaCloud\" %Z%\packages\cloudantivirus-2.2.exe"
:: Delete just in case is a reinstall
todo.pl "del /Q /S %TEMP%\PandaCloud"

:: Install 7zip if it isn't already
todo.pl 7-zip.bat

