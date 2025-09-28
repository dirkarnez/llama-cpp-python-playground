#!/bin/bash
export PATH="/usr/local/bin:/usr/bin:/bin"
export PATH="$PATH:$(cygpath -u $USERPROFILE)/Downloads/winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1/mingw64/bin"
export PATH="$PATH:$(cygpath -u $USERPROFILE)/Downloads/cmake-3.26.1-windows-x86_64/bin"
export PATH="$PATH:$(cygpath -u $USERPROFILE)/Downloads/python-3.10.8-amd64-portable"

# export CMAKE_GENERATOR="MinGW Makefiles"
# export CMAKE_ARGS="-DCMAKE_C_COMPILER=gcc.exe -DCMAKE_CXX_COMPILER=g++.exe
export CMAKE_GENERATOR="MinGW Makefiles"
export CMAKE_ARGS="-DCMAKE_C_COMPILER=gcc.exe -DCMAKE_CXX_COMPILER=g++.exe"

python -m pip install --upgrade pip
python -m pip install -r requirements.txt

