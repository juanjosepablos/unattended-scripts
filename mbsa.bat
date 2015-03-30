:: OPTIONAL: Microsoft Baseline Security Analyse 2.2
:: http://technet.microsoft.com/en-us/security/cc184924

@ECHO OFF

:: Download
:: URL|ALL|http://download.microsoft.com/download/8/E/1/8E16A4C7-DD28-4368-A83A-282C82FC212A/MBSASetup-x86-EN.msi|packages/mbsa/mbsa-x86-enu-2.3.msi
:: URL|ALL|http://download.microsoft.com/download/8/E/1/8E16A4C7-DD28-4368-A83A-282C82FC212A/MBSASetup-x64-EN.msi|packages/mbsa/mbsa-AMD64-enu-2.3.msi
:: URL|ALL|http://download.windowsupdate.com/windowsupdate/redist/standalone/7.4.7600.226/WindowsUpdateAgent30-x86.exe|packages/mbsa/WindowsUpdateAgent30-x86.exe

todo.pl "%Z%\packages\mbsa\WindowsUpdateAgent30-x86.exe /quiet /norestart"
:: Installation
if not exist %Z%\packages\mbsa\mbsa-%PROCESSOR_ARCHITECTURE%-enu-2.3.msi goto noinstall
todo.pl "msiexec /qb /l* %SystemDrive%\netinst\logs\mbsa.txt /i \"%Z%\packages\mbsa\mbsa-%PROCESSOR_ARCHITECTURE%-enu-2.3.msi\" REBOOT=ReallySuppress"
goto done

:noinstall
@echo mbsa.bat: No Installation File found for Microsoft Baseline Security Analyse 2.2
todo.pl "msiexec /qb /l* %SystemDrive%\netinst\logs\mbsa.txt /i \"%Z%\packages\mbsa\mbsa-%PROCESSOR_ARCHITECTURE%-enu-2.3.msi\" REBOOT=ReallySuppress"

:done

