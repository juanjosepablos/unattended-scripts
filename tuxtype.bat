::OPTIONAL: Install TuxType (1.9.0)
::HOME: http://tux4kids.alioth.debian.org/tuxtype/index.php
::URL|ALL|https://alioth.debian.org/frs/download.php/2972/tuxmath-1.9.0-win32-installer.exe|packages/tuxmath-1.9.0-win32-installer.exe
::URL|ALL|https://alioth.debian.org/frs/download.php/3177/tuxtype-1.8.1-win32-installer.exe|packages/tuxtype-1.8.1-win32-installer.exe
@echo off
:: Run the installers

todo.pl "start /wait %Z%\packages\tuxmath-1.9.0-win32-installer.exe /S"
todo.pl "start /wait %Z%\packages\tuxtype-1.8.1-win32-installer.exe /S"
