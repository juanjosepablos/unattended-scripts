:: OPTIONAL: Install Skype
:: Download it at http://www.skype.com/go/getskype
:: URL|ALL|http://www.skype.com/go/getskype-full|packages/skype/skype-6.9.exe
:: More info:
:: http://blogs.skype.com/category/garage-updates/
:: http://forum.skype.com/index.php?showtopic=9783&st=0&gopid=366611&

@Echo off
todo.pl "reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /f /v Skype"
::todo.pl "%Z%\packages\skype\skype-4.1.0.179.exe /VERYSILENT /NORESTART /NOGOOGLE /LOG /NOIE"
todo.pl "%Z%\packages\skype\skype-6.9.exe /VERYSILENT /NORESTART /NOGOOGLE /LOG /NOIE"
