:: OPTIONAL: Install Mysql Essentials
:: URL|ALL|http://mysql.rediris.es/Downloads/MySQL-5.1/mysql-essential-5.1.31-win32.msi|packages/mysql/mysql-essential-5.1.31-win32.msi
@Echo off

todo.pl "msiexec /qn /l* %SystemDrive%\netinst\logs\mysql.txt /i %Z%\packages\mysql\mysql-essential-5.1.31-win32.msi REBOOT=ReallySuppress INSTALLDIR=C:\MySQL"
