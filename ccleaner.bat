::OPTIONAL: Install Ccleaner
::HOME: http://www.piriform.com/CCLEANER
::URL|ALL|http://download.piriform.com/ccsetup405.exe|packages/ccsetup405.exe

@echo off
todo.pl "unlink.pl special:AllUsersDesktop\CCleaner.lnk"
todo.pl "%Z%\packages\ccsetup405.exe /S"
