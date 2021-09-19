:: OPTIONAL: Install MS Teams
:: HOME: https://www.microsoft.com/es-es/microsoft-365/microsoft-teams/download-app
:: URL|ALL|https://statics.teams.cdn.office.net/production-windows-x64/1.4.00.22472/Teams_windows_x64.msi|packages/teams_windows_1.4.00.22472_amd64.msi

todo.pl ".ignore-err 194 msiexec /qn /norestart /passive /i  %Z%\packages\teams_windows_1.4.00.22472_amd64.msi"

