:: OPTIONAL:  Install NAPS2
:: HOME: https://sourceforge.net/projects/naps2/
:: URL|All|http://downloads.sourceforge.net/naps2/6.1.2/naps2-6.1.2-setup.exe|packages/naps/naps2-6.1.2-setup.exe
:: URL|All|http://downloads.sourceforge.net/naps2/2.6.3/naps2-2.6.3-setup.exe|packages/naps/naps2-2.6.3-setup.exe

@Echo off
:: OCR Feature
:: COPY to %APPDATA%\NAPS2\components
:: URL|All|http://downloads.sourceforge.net/naps2/components/tesseract-4.0.0b4/spa.traineddata.gz|packages/naps/tesseract-4.0.0b4/spa.traineddata.gz

IF EXIST "%ProgramFiles%"\NAPS2 todo.pl "shortcut.pl  \"%ProgramFiles%\NAPS2\NAPS2.exe\" special:AllUsersDesktop\NAPS2"
IF EXIST "%ProgramFiles(x86)%"\NAPS2 todo.pl "shortcut.pl  \"%ProgramFiles(x86)%\NAPS2\NAPS2.exe\" special:AllUsersDesktop\NAPS2"
todo.pl "%Z%\packages\naps\naps2-6.1.2-setup.exe /VERYSILENT /NORESTART /LOG"

::skip for now.
::todo.pl dotnet.bat
