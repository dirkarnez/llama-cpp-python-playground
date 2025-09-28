@echo off

@REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOADS_DIR=%USERPROFILE%\Downloads
set DOWNLOADS_DIR_LINUX=%DOWNLOADS_DIR:\=/%

set PYTHON_DIR=%DOWNLOADS_DIR%\python-3.10.8-amd64-portable

set PATH=^
%PYTHON_DIR%;^
%PYTHON_DIR%\Scripts;^
%DOWNLOADS_DIR%\PortableGit\bin;^
%DOWNLOADS_DIR%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64;^
%DOWNLOADS_DIR%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin;^
%DOWNLOADS_DIR%\cmake-3.26.1-windows-x86_64\bin;

gcc --version

@REM set CMAKE_GENERATOR="MinGW Makefiles"
@REM set CMAKE_ARGS=-DCMAKE_C_COMPILER=gcc.exe -DCMAKE_CXX_COMPILER=g++.exe
python -m pip install --upgrade pip
python -m pip install -r requirements.txt -C cmake.args="-DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++"
pause
