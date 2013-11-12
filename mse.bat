:: OPTIONAL: Install MS Security Essentials
:: HOME: http://windows.microsoft.com/en-gb/windows/security-essentials-all-versions
:: DEFINITIONS: http://www.microsoft.com/security/portal/definitions/adl.aspx
:: URL|ALL|http://mse.dlservice.microsoft.com/download/2/A/C/2AC6E889-9EBB-4E06-A011-1AA9DAEDDB69/eses/x86/mseinstall.exe|packages/mse/mseinstall-x86.exe
:: URL|ALL|http://mse.dlservice.microsoft.com/download/2/A/C/2AC6E889-9EBB-4E06-A011-1AA9DAEDDB69/eses/amd64/mseinstall.exe|packages/mse/mseinstall-amd64.exe
:: URL|ALL|http://definitionupdates.microsoft.com/download/DefinitionUpdates/VersionedSignatures/AM/1.157.1820.0/x86/mpam-fe.exe|packages/mse/mpam-fe-x86-1.157.1820.0.exe
:: URL|ALL|http://definitionupdates.microsoft.com/download/DefinitionUpdates/VersionedSignatures/AM/1.157.1820.0/amd64/mpam-fe.exe|packages/mse/mpam-fe-amd64-1.157.1820.0.exe

@Echo off
::todo.pl "\"%PROGRAMFILES%\Microsoft Security Client\msseces.exe\" /update"

:: INSTALL updates
todo.pl "%Z%\packages\mse\mpam-fe-%PROCESSOR_ARCHITECTURE%-1.157.1820.0.exe /s"

todo.pl "start /wait %Z%\packages\mse\mseinstall-%PROCESSOR_ARCHITECTURE%.exe /s /runwgacheck /o"

