@echo off
set currdir=%~dp0
IF "%currdir:~-1%"=="\" SET currdir=%currdir:~0,-1%
cd /d "%currdir%"

set ver=9.0.1418
set fn=gvim_%ver%_x64.exe
set url=https://github.com/vim/vim-win32-installer/releases/download/v%ver%/%fn%

set installedpath=C:\Users\%UserName%\AppData\Local\Microsoft\WindowsApps

curl -k --fail --output %fn% -L %url%

"C:\Program Files\7-Zip\7z" x %fn% -ogvim

cp gvim\$0\vim.exe %installedpath%
cp /y vimrc %installedpath%\.vimrc

:END
echo bye
timeout /t 3
