#!/bin/bash
export PATH="/usr/local/bin:/usr/bin:/bin:/mingw64/bin:/usr/bin"
export PATH="$PATH:$USERPROFILE/Downloads/winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1/mingw64/bin"
export PATH="$PATH:$USERPROFILE/Downloads/cmake-3.26.1-windows-x86_64/bin"
export PATH="$PATH:$USERPROFILE/Downloads/python-3.10.8-amd64-portable"



# export CMAKE_GENERATOR="MinGW Makefiles"
# export CMAKE_ARGS="-DCMAKE_C_COMPILER=gcc.exe -DCMAKE_CXX_COMPILER=g++.exe
export CMAKE_GENERATOR="MinGW Makefiles"
export CMAKE_ARGS="-DGGML_OPENBLAS=on -DCMAKE_C_COMPILER=gcc.exe -DCMAKE_CXX_COMPILER=g++.exe"


python3 -m llama_cpp.server # --model <model_path_to_functionary_v2_model> --chat_format functionary-v2 --hf_pretrained_model_name_or_path <model_path_to_functionary_v2_tokenizer>
