::OPTIONAL: Install Ccleaner
::HOME: http://www.piriform.com/CCLEANER
::URL|ALL|http://download.piriform.com/ccsetup407.exe|packages/ccsetup407.exe

@echo off
todo.pl "unlink.pl special:AllUsersDesktop\CCleaner.lnk"
todo.pl "%Z%\packages\ccsetup407.exe /S"
