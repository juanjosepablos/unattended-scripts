:: OPTIONAL: Install PDFsam PDF Split And Merge
:: HOME: http://www.pdfsam.org/download/
:: URL|ALL|http://downloads.sourceforge.net/project/pdfsam/pdfsam/2.2.4/pdfsam-v2_2_4.msi|packages/pdfsam/pdfsam-v2.2.4.msi
:: URL|ALL|https://downloads.sourceforge.net/project/pdfsam/pdfsam/2.2.3/pdfsam-x64-v2_2_3.msi|packages/pdfsam/pdfsam-AMD64-v2.2.3.msi
:: URL|ALL|https://downloads.sourceforge.net/project/pdfsam/pdfsam/2.2.3/pdfsam-x86-v2_2_3.msi|packages/pdfsam/pdfsam-x86-v2.2.3.msi

::To disable update
::%PROGRAMFILES%\PDF Split And Merge Basic\pdfsam-config.xml

:: Install PDFSam
todo.pl "%Z%\packages\pdfsam\pdfsam-%PROCESSOR_ARCHITECTURE%-v2.2.3.msi /passive"
