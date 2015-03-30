::OPTIONAL: Install Ccleaner
::HOME: http://www.piriform.com/CCLEANER
::URL|ALL|http://download.piriform.com/ccsetup419.exe|packages/ccsetup419.exe

@echo off
todo.pl "reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /f /v \"CCleaner Monitoring\""
::todo.pl "unlink.pl special:AllUsersDesktop\CCleaner.lnk"
::todo.pl "%Z%\packages\ccsetup419.exe /S"
