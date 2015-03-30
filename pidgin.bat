:: OPTIONAL: Install Pidgin
:: HOME: <http://www.pidgin.im>
:: URL|ALL|http://downloads.sourceforge.net/pidgin/pidgin-2.10.8-offline.exe|packages/pidgin-2.10.8-offline.exe
@echo off

todo.pl "shortcut.pl  \"%ProgramFiles%\Pidgin\pidgin.exe\" special:AllUsersDesktop\Messenger"
todo.pl "%Z%\packages\pidgin-2.10.8-offline.exe /S"
