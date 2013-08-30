::OPTIONAL: Install Tuxpaint (0.9.21)
::HOME: http://www.tuxpaint.org/
::URL|ALL|http://downloads.sourceforge.net/sourceforge/tuxpaint/tuxpaint-0.9.21-win32-installer.exe|packages/tuxpaint/tuxpaint-0.9.21-win32-installer.exe
::URL|ALL|http://downloads.sourceforge.net/sourceforge/tuxpaint/tuxpaint-stamps-2009-06-28-win32-installer.exe|packages/tuxpaint/tuxpaint-stamps-2009-06-28-win32-installer.exe

@echo off
:: Run the installers

todo.pl "start /wait %Z%\packages\tuxpaint\tuxpaint-stamps-2008.03.01-win32-installer.exe /VERYSILENT /NORESTART /LOG"
todo.pl "start /wait %Z%\packages\tuxpaint\tuxpaint-0.9.21-win32-installer.exe /VERYSILENT /NORESTART /LOG"
