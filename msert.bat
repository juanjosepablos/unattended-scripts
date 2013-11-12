:: OPTIONAL: Microsoft Safety Scanner
:: HOME: http://www.microsoft.com/security/scanner/es-xl/default.aspx
:: URL|ALL|http://definitionupdates.microsoft.com/download/definitionupdates/safetyscanner/x86/msert.exe|packages/antirootkit/msert-x86.exe
:: URL|ALL|http://definitionupdates.microsoft.com/download/definitionupdates/safetyscanner/amd64/msert.exe|packages/antirootkit/msert-amd64.exe

@echo off
todo.pl "%Z%\packages\antirootkit\msert-x86.exe /Q"
