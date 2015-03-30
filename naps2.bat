:: OPTIONAL:  Install NAPS2
:: HOME: https://sourceforge.net/projects/naps2/
http://downloads.sourceforge.net/project/naps2/3.0b1/naps2-3.0b1-setup.exe?r=&ts=1418919525&use_mirror=kent
:: URL|All|http://downloads.sourceforge.net/naps2/3.0b1/naps2-3.0b1-setup.exe|packages/naps/naps2-3.0b1-setup.exe
:: URL|All|http://downloads.sourceforge.net/naps2/2.6.3/naps2-2.6.3-setup.exe|packages/naps/naps2-2.6.3-setup.exe

@Echo off

todo.pl "shortcut.pl  \"%ProgramFiles%\naps2\naps2.exe\" special:AllUsersDesktop\naps2"
todo.pl "%Z%\packages\naps\naps2-3.0b1-setup.exe /VERYSILENT /NORESTART /LOG"

todo.pl dotnet.bat
