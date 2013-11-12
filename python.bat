:: OPTIONAL: Install Python 2.6.1
:: HOME: http://www.python.org
:: URL|ALL|http://www.python.org/ftp/python/2.6.1/python-2.6.1.msi|packages/python/python-2.6.1.msi
@Echo off

todo.pl "msiexec /qb /l* %SystemDrive%\netinst\logs\python.txt /i %Z%\packages\python\python-2.6.1.msi REBOOT=ReallySuppress"
