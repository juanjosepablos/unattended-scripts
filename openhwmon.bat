::OPTIONAL: Install OpenHardware Monitor
:: HOME: http://openhardwaremonitor.org
:: URL|ALL|http://openhardwaremonitor.org/files/openhardwaremonitor-v0.6.0-beta.zip|packages/openhardwaremonitor-v0.6.0-beta.zip

:: Create shortcut

::todo.pl "shortcut.pl \"%ProgramFiles%\MameUI32\MameUI32.exe\" special:AllusersDesktop\mame"

:: Unzip all of the files within programfiles
todo.pl "\"%ProgramFiles%\7-Zip\7z\" x -o\"%ProgramFiles%\" %Z%\packages\openhardwaremonitor-v0.6.0-beta.zip"

:: Install 7zip if it isn't already
todo.pl 7-zip.bat
