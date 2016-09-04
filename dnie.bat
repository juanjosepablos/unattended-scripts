::OPTIONAL: Install DNIE
::HOME: http://www.dnielectronico.es/descargas/index.html
::http://www.dnielectronico.es/descargas/CSP_para_Sistemas_Windows/Windows%20_32%20_bits/DNIe%20v13_0_0%20(32%20bits).exe
::URL|ALL|http://www.dnielectronico.es/descargas/historico/DNIe%20v11_5_0%20(32%20bits).exe|packages/espublico/DNIe_v11_5_0_x86.exe
::URL|ALL|http://www.dnielectronico.es/descargas/historico/DNIe%20v11_5_0%20(64%20bits).exe|packages/espublico/DNIe_v11_5_0_AMD64.exe
::URL|ALL|http://www.dnielectronico.es/descargas/historico/DNIe_v6_0_2.zip|packages/espublico/dnie_v6_0_2.zip


@echo off

todo.pl "%Z%\packages\espublico\DNIe_v11_5_0_%PROCESSOR_ARCHITECTURE%.exe /l1034 /s /v\"/qn TIME=30 REINICIAR=false\""

