::OPTIONAL: Install Ccleaner
::HOME: http://www.piriform.com/CCLEANER
::URL|ALL|http://download.piriform.com/ccsetup408.exe|packages/ccsetup408.exe

@echo off
todo.pl "unlink.pl special:AllUsersDesktop\CCleaner.lnk"
todo.pl "%Z%\packages\ccsetup408.exe /S"
