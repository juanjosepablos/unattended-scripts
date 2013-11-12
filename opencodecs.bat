:: OPTIONAL:  Directshow Filters for Ogg Vorbis, Speex, Theora, FLAC, and WebM
:: HOME: http://xiph.org/dshow/ http://www.webmproject.org/tools/
:: URL|All|http://downloads.xiph.org/releases/oggdsf/opencodecs_0.85.17777.exe|packages/opencodecs_0.85.17777.exe
:: URL|All|http://webm.googlecode.com/files/webmdshow-0.9.12.0-20101216.zip|packages/webmdshow-0.9.12.0-20101216.zip

@Echo off
todo.pl "rmdir /s /q \"%TEMP%\webmdshow-0.9.12.0-20101216\""
:: Uncompress WebM

todo.pl "%TEMP%\webmdshow-0.9.12.0-20101216\install_webmdshow /S"
todo.pl "\"%ProgramFiles%\7-Zip\7z\" x -y -o\"%TEMP%" %Z%\packages\webmdshow-0.9.12.0-20101216.zip"


todo.pl "%Z%\packages\opencodecs_0.85.17777.exe /S"
