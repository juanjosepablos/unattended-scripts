::OPTIONAL: Install Mame
:: HOME: http://www.mameui.info/
:: URL|ALL|http://www.mameui.info/IV-Play.zip|packages/mame/IV-Play.zip
:: URL|ALL|http://www.mameui.info/MameUI32.7z|packages/mame/MameUIx86-156.7z
:: URL|ALL|http://www.mameui.info/MameUI64.7z|packages/mame/MameUIamd64-156.7z

:: Create shortcut

IF [%PROCESSOR_ARCHITECTURE%]==[x86] todo.pl "shortcut.pl \"%ProgramFiles%\MameUI32\MameUI32.exe\" special:AllusersDesktop\mame"
IF [%PROCESSOR_ARCHITECTURE%]==[AMD64] todo.pl "shortcut.pl \"%ProgramFiles%\MameUI64\MameUI64.exe\" special:AllusersDesktop\mame"

:: Unzip all of the files within programfiles
todo.pl "\"%ProgramFiles%\7-Zip\7z\" x -o\"%ProgramFiles%\" %Z%\packages\mame\MameUI%PROCESSOR_ARCHITECTURE%-156.7z"

:: Install 7zip if it isn't already
todo.pl 7-zip.bat
