:: OPTIONAL: TDSKILLER
:: HOME: 
:: URL|ALL|http://media.kaspersky.com/utilities/VirusUtilities/EN/tdsskiller.exe|packages/antirootkit/tdsskiller-3.0.0.17.exe

@echo off

todo.pl "tdsskiller-3.0.0.17.exe -silent -accepteula -l %SYSTEMROOT%\tdsskiller.log"

