:: OPTIONAL:  Install Blender
:: HOME: http://www.blender.org/
:: URL|http://download.blender.org/release/Blender2.49a/blender-2.49a-avifix-windows.zip|packages/blender/blender-2.49a-avifix-windows.zip
@Echo off

:: Shortcut for all the Users
todo.pl "shortcut.pl c:\blender-2.48a-windows\blender.exe special:AllUsersDesktop\Blender"

:: This is the installer. It crash when saving a file. Check bug #4713
:: todo.pl "%Z%\packages\blender\blender-2.47-windows.exe /S"

:: Ok, install on c:\ so nasty bugs does not apply to us.
todo.pl "\"%ProgramFiles%\7-Zip\7z\" x -y -oc:\ %Z%\packages\blender\blender-2.49a-avifix-windows.zip"

:: Install 7zip if it isn't already
todo.pl 7-zip.bat

::  Python  is needed by extra plugins/scripts
todo.pl python.bat
:: Microsoft Visual C++ 2005 Redistributable Package (x86)
todo.pl vcredist_x86.bat

