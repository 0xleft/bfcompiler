nasm -f win32 windows.asm
link /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.19041.0\um\x86" windows.obj kernel32.lib /OUT:windows.exe /ENTRY:main
del windows.obj
.\windows.exe