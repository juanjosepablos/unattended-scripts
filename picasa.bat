:: OPTIONAL:  Install Picasa 3
:: HOME: http://picasa.google.com/
:: The version number is depended on when the file has been downloaded
:: check http://support.google.com/picasa/answer/53209?hl=en

:: URL|All|http://dl.google.com/picasa/picasa39-setup.exe|packages/picasa/picasa3.9.136.20-setup.exe

@Echo off

::FIXME: fail on windows7
todo.pl "shortcut.pl \"%ProgramFiles%\"\Google\Picasa3\Picasa3.exe special:AllUsersDesktop\Picasa"

todo.pl "%Z%\packages\picasa\picasa3.9.136.20-setup.exe /S /L"
