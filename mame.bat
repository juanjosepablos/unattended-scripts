::OPTIONAL: Install Mame
:: HOME: http://www.mameui.info/
:: URL|ALL|http://www.mameui.info/MameUI32.7z|packages/mame/MameUI32-145.7z
:: URL|ALL|http://www.mameui.info/MameUI64.7z|packages/mame/MameUI64-147.4.7z

:: Create shortcut

todo.pl "shortcut.pl \"%ProgramFiles%\MameUI32\MameUI32.exe\" special:AllusersDesktop\mame"

:: Unzip all of the files within programfiles
todo.pl "\"%ProgramFiles%\7-Zip\7z\" x -o\"%ProgramFiles%\" %Z%\packages\mame\MameUI32-145.7z"

:: Install 7zip if it isn't already
todo.pl 7-zip.bat
