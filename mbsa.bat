:: OPTIONAL: Microsoft Baseline Security Analyse 2.2
:: http://technet.microsoft.com/en-us/security/cc184924

@ECHO OFF

:: Download
:: URL|ALL|http://download.microsoft.com/download/8/E/1/8E16A4C7-DD28-4368-A83A-282C82FC212A/MBSASetup-x86-EN.msi|packages/mbsa/mbsa-enu-2.2.msi
:: URL|ENU|http://download.microsoft.com/download/8/E/1/8E16A4C7-DD28-4368-A83A-282C82FC212A/MBSASetup-x86-FR.msi|packages/mbsa/mbsa-fra-2.2.msi
:: URL|FRA|http://download.microsoft.com/download/8/E/1/8E16A4C7-DD28-4368-A83A-282C82FC212A/MBSASetup-x86-JA.msi|packages/mbsa/mbsa-jap-2.2.msi
:: URL|DEU|http://download.microsoft.com/download/8/E/1/8E16A4C7-DD28-4368-A83A-282C82FC212A/MBSASetup-x86-DE.msi|packages/mbsa/mbsa-deu-2.2.msi
:: URL|ALL|http://download.windowsupdate.com/windowsupdate/redist/standalone/7.4.7600.226/WindowsUpdateAgent30-x86.exe|packages/mbsa/WindowsUpdateAgent30-x86.exe

todo.pl "%Z%\packages\mbsa\WindowsUpdateAgent30-x86.exe /quiet /norestart"
:: Installation
if not exist %Z%\packages\mbsa\mbsa-%WINLANG%-2.2.msi goto noinstall
todo.pl "msiexec /qb /l* %SystemDrive%\netinst\logs\mbsa.txt /i \"%Z%\packages\mbsa\mbsa-%WINLANG%-2.2.msi\" REBOOT=ReallySuppress"
goto done

:noinstall
@echo mbsa.bat: No Installation File found for Microsoft Baseline Security Analyse 2.2
todo.pl "msiexec /qb /l* %SystemDrive%\netinst\logs\mbsa.txt /i \"%Z%\packages\mbsa\mbsa-enu-2.2.msi\" REBOOT=ReallySuppress"

:done

