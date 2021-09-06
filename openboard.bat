:: OPTIONAL:  Install OpenBoard
:: HOME: http://openboard.ch/index.en.html
:: URL|All|https://github.com/OpenBoard-org/OpenBoard/releases/download/v1.6.1/OpenBoard_Installer_1.6.1.exe|packages/openboard/OpenBoard_Installer_1.6.1.exe
@Echo off
:: Use this code to disable automatic updates
:: perl -pi -e "s/EnableAutomaticSoftwareUpdates=true/EnableAutomaticSoftwareUpdates=false/g" "c:\Program Files (x86)\OpenBoard\etc\OpenBoard.config"

:: If system is XP then use 1.5.2
set VERSION=1.6.1
if "%WINVER%" == "winxpsp3" set VERSION=1.5.2

todo.pl "%Z%\packages\openboard\OpenBoard_Installer_%VERSION%.exe /VERYSILENT"
