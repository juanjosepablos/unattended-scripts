::OPTIONAL: Install Dia (0.97.1)
::HOME: http://dia-installer.de/index_en.html

::URL|ALL|http://downloads.sourceforge.net/dia-installer/dia-setup-0.97.1-1.exe|packages/dia-setup-0.97.1-1.exe

@echo off
:: Run the installers

todo.pl "start /wait %Z%\packages\dia-setup-0.97.1-1.exe /S"
