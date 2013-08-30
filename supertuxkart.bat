::OPTIONAL: Install SuperTuxKart (0.8)
::HOME: http://supertuxkart.sourceforge.net/
::URL|ALL|http://downloads.sourceforge.net/supertuxkart/supertuxkart-0.8-win.exe|packages/supertuxkart-0.8-win.exe

@echo off
:: Create a Shortcut for all users.
todo.pl "shortcut.pl  \"%ProgramFiles%\tuxracer-win32-0.8\tuxracer.exe\" special:AllUsersDesktop\tuxracer"

:: Install the Program
todo.pl "%Z%\packages\supertuxkart-0.8-win.exe /S"

:: Install C++ Runfiles
todo.pl vcredist-x86.bat

