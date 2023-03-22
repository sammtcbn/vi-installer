@echo off
set currdir=%~dp0
IF "%currdir:~-1%"=="\" SET currdir=%currdir:~0,-1%
cd /d "%currdir%"

set ver=9.0.1423
set fn=gvim_%ver%_x64.zip
set url=https://github.com/vim/vim-win32-installer/releases/download/v%ver%/%fn%

set installedpath=C:\Users\%UserName%\AppData\Local\Microsoft\WindowsApps

curl -k --fail --output %fn% -L %url%

powershell -command "Expand-Archive -Force %fn% gvim"

copy /y gvim\vim\vim90\vim.exe "%installedpath%\vi.exe"
copy /y vimrc "%installedpath%\.vimrc"

:END
echo bye
timeout /t 3
