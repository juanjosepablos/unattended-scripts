::OPTIONAL: Install TuxRacer (0.61a)
::HOME: http://tuxracer.sourceforge.net/
::URL|ALL|http://downloads.sourceforge.net/tuxracer/tuxracer-win32-0.61a.zip|packages/tuxracer-win32-0.61a.zip

@echo off
:: Create a Shortcut for all users.
todo.pl "shortcut.pl  \"%ProgramFiles%\tuxracer-win32-0.61a\tuxracer.exe\" special:AllUsersDesktop\tuxracer"

:: Uncompress the program
todo.pl "\"%ProgramFiles%\7-Zip\7z\" x -y -o\"%ProgramFiles%\" %Z%\packages\tuxracer-win32-0.61a.zip"

:: Install 7zip if it isn't already
todo.pl 7-zip.bat

