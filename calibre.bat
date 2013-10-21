::OPTIONAL: Install Calibre
::HOME: http://calibre-ebook.com/download
::URL|ALL|http://download.calibre-ebook.com/1.7.0/calibre-1.7.0.msi|packages/calibre/calibre-1.7.0-x86.msi
::URL|ALL|http://download.calibre-ebook.com/1.7.0/calibre-64bit-1.7.0.msi|packages/calibre/calibre-1.7.0-amd64.msi

@echo off

todo.pl ".ignore-err 194 msiexec /qn /l* %SystemDrive%\netinst\logs\calibre.txt /i %Z%\packages\calibre\calibre-1.7.0-%PROCESSOR_ARCHITECTURE%.msi /norestart /passive"
