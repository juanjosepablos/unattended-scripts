:: OPTIONAL:  Install NAPS2
:: HOME: https://sourceforge.net/projects/naps2/
:: URL|All|http://downloads.sourceforge.net/naps2/2.6.3/naps2-2.6.3-setup.exe|packages/naps/naps2-2.6.3-setup.exe

@Echo off

todo.pl "shortcut.pl  \"%ProgramFiles%\naps2\naps2.exe\" special:AllUsersDesktop\naps2"
todo.pl "%Z%\packages\naps\naps2-2.6.3-setup.exe /VERYSILENT /NORESTART /LOG"
