:: OPTIONAL:  Postgresql
:: HOME: http://www.enterprisedb.com/products-services-training/pgdownload#windows
:: URL|All|http://get.enterprisedb.com/postgresql/postgresql-9.1.11-1-windows.exe|packages/postgresql/postgresql-9.1.11-1-windows.exe
:: URL|All|http://get.enterprisedb.com/postgresql/postgresql-9.3.2-1-windows.exe|packages/postgresql/postgresql-9.3.2-1-windows.exe

@Echo off

todo.pl "%Z%\packages\postgresql\postgresql-9.3.2-1-windows.exe --mode unattended"
