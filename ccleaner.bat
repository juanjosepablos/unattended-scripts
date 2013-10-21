::OPTIONAL: Install Ccleaner
::HOME: http://www.piriform.com/CCLEANER
::URL|ALL|http://download.piriform.com/ccsetup406.exe|packages/ccsetup406.exe

@echo off
todo.pl "unlink.pl special:AllUsersDesktop\CCleaner.lnk"
todo.pl "%Z%\packages\ccsetup406.exe /S"
