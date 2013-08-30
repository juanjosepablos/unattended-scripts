::OPTIONAL: Install XBMC
::HOME: http://xbmc.org/
::URL|ALL|http://mirrors.xbmc.org/releases/win32/xbmc-10.1.exe|packages/xbmc-10.1.exe

@echo off
:: Run the installers

todo.pl "start /wait %Z%\packages\xbmc-10.1.exe /S"
todo.pl "vcredist-x86.bat"
todo.pl "directxrt.bat"
