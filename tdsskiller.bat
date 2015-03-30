:: OPTIONAL: TDSKILLER
:: HOME: 
:: URL|ALL|http://media.kaspersky.com/utilities/VirusUtilities/EN/tdsskiller.exe|packages/antirootkit/tdsskiller-3.0.0.44.exe

@echo off

todo.pl "%Z%\packages\antirootkit\tdsskiller-3.0.0.44.exe -silent -accepteula -l %SYSTEMROOT%\tdsskiller-3.0.0.44.log"
