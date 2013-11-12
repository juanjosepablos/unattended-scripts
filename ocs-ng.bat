:: OCS INSTALLATION
:: !! Before use, set the variable 'ocsserver' in the file Z:\site\config.bat like:
:: set ocsserver=ocs-server.domain
::
:: URL|ALL|http://www.cacert.org/certs/root.crt|packages/ocs-ng/cacert.pem
:: URL|ALL|https://launchpad.net/ocsinventory-windows-agent/2.0/2.0.5/+download/OCSNG-Windows-Agent-2.0.5.zip|packages/ocs-ng/OCSNG-Windows-Agent-2.0.5.zip

::Copy the cacert.pem
todo.pl "copy %Z%\packages\ocs-ng\cacert.pem %ALLUSERSPROFILE%\OCS Inventory NG\Agent"

:: first inventory
todo.pl ".ignore-err 4 \"%ProgramFiles%\OCS Inventory Agent\OcsInventory.exe\" /S %ocsserver%"
call %Z%\site\config.bat

:: installation
todo.pl "\"%TEMP%\OCS-NG-Windows-Agent-Setup.exe\" /S %ocsserver%"

:: extract installer into TEMP directory
todo.pl "\"%ProgramFiles%\7-ZIP\7z.exe\" e \"%Z%\packages\ocs-ng\OCSNG-Windows-Agent-2.0.5.zip\" -o\"%TEMP%\""

:: Install 7zip if it isn't already
todo.pl 7-zip.bat

