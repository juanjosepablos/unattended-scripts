:: OPTIONAL: UltraDefrag 7.1.4
:: HOME: http://ultradefrag.sourceforge.net/en/index.html
:: URL|ALL|http://downloads.sourceforge.net/ultradefrag/ultradefrag-7.1.4.bin.i386.exe|packages/ultradefrag-7.1.4.bin.i386.exe
:: URL|ALL|http://downloads.sourceforge.net/ultradefrag/ultradefrag-7.1.4.bin.amd64.exe|packages/ultradefrag-7.1.4.bin.amd64.exe

@echo off


:: Install Ultradefrag
todo.pl "%Z%\packages\ultradefrag-7.1.4.bin.%PROCESSOR_ARCHITECTURE%.exe /S"

