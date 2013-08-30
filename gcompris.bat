::OPTIONAL: Install GCompris (12.11)
::HOME: http://gcompris.net/
::URL|ALL|http://downloads.sourceforge.net/gcompris/gcompris-12.11.exe|packages/gcompris-12.11.exe
@echo off
:: Run the installers

todo.pl "start /wait %Z%\packages\gcompris-12.11.exe /S"

