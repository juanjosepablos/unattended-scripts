::OPTIONAL: Install Battle for Wesnoth 
::HOME: http://www.wesnoth.org/
::URL|ALL|http://downloads.sourceforge.net/wesnoth/wesnoth-1.10.6-win32.exe|packages/wesnoth-1.10.6-win32.exe

@echo off
:: Run the installers

todo.pl "start /wait %Z%\packages\wesnoth-1.10.6-win32.exe  /S"
