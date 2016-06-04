:: OPTIONAL: Panda Cloud
:: HOME: http://www.cloudantivirus.com/
:: URL|ALL|http://acs.pandasoftware.com/Panda2016/FREEAV/181305/FREEAV.exe|packages/pandacloud/FREEAV-181305.exe

@echo off
:: FIXME Productlanguage is in spanish
IF [%PROCESSOR_ARCHITECTURE%]==[x86] SET PANDA_MSI=%TEMP%\PandaCloud\PandaCloudAntivirus_x86.msi
IF [%PROCESSOR_ARCHITECTURE%]==[AMD64] SET PANDA_MSI=%TEMP%\PandaCloud\PandaCloudAntivirus_x64.msi

todo.pl "%PANDA_MSI% /qb INSTALLDIR=\"%PROGRAMFILES%\Panda Security\Panda Cloud Antivirus\" ProductLanguage=1034 SETUPEXEDIR=%TEMP%\PandaCloud\ CURRENTDIRECTORY=%TEMP%\PandaCloud"

:: Uncompress the exe file
todo.pl "\"%ProgramFiles%\7-Zip\7z.exe\" x -y -o%TEMP%\PandaCloud %Z%\packages\pandacloud\FREEAV-181305.exe"

:: Delete just in case is a reinstall or old version
todo.pl "del /Q /S %TEMP%\PandaCloud"

:: Install 7zip if it isn't already
todo.pl 7-zip.bat

