::OPTIONAL: Install Avast Free Antivirus
::HOME: http://www.avast.com/download-software
::URL|ALL|http://files.avast.com/iavs5x/avast_free_antivirus_setup.exe|packages/avast_free_antivirus_setup.exe

@echo off
todo.pl "%Z%\packages\avast_free_antivirus_setup.exe /verysilent /norestart /sp-"
