:: OCS INSTALLATION
:: !! Before use, set the variable 'ocsserver' in the file Z:\site\config.bat like:
:: set ocsserver=ocs-server.domain
::
:: URL|ALL|http://www.cacert.org/certs/root.crt|packages/ocs-ng/cacert.pem
:: URL|ALL|https://launchpad.net/ocsinventory-windows-agent/2.x/2.1.1/+download/OCSNG-Windows-Agent-2.1.1.zip|packages/ocs-ng/OCSNG-Windows-Agent-2.1.1.zip

:: first inventory
todo.pl ".ignore-err 4 \"%ProgramFiles%\OCS Inventory Agent\OcsInventory.exe\" /S %ocsserver%"
call %Z%\site\config.bat

::Copy the cacert.pem
:: FIXME: this only works on windows7
todo.pl "copy %Z%\packages\ocs-ng\cacert.pem %ALLUSERSPROFILE%\OCS Inventory NG\Agent"

:: installation
todo.pl "\"%TEMP%\OCS-NG-Windows-Agent-Setup.exe\" /S %ocsserver%"

:: extract installer into TEMP directory
todo.pl "\"%ProgramFiles%\7-ZIP\7z.exe\" e \"%Z%\packages\ocs-ng\OCSNG-Windows-Agent-2.1.1.zip\" -o\"%TEMP%\""

:: Install 7zip if it isn't already
todo.pl 7-zip.bat

