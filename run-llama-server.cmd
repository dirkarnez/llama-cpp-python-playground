@REM run as Administrator
@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads

@REM https://github.com/ggml-org/llama.cpp/releases/download/b6615/llama-b6615-bin-win-cpu-x64.zip
@REM https://huggingface.co/audreyt/Taiwan-LLM-7B-v2.1-chat-GGUF/resolve/main/Taiwan-LLM-7B-v2.1-chat-Q5_K_M.gguf

cd /d "%DOWNLOADS_DIR%\llama-b6615-bin-win-cpu-x64"

.\llama-server.exe -m %DOWNLOADS_DIR%\Taiwan-LLM-7B-v2.1-chat-Q5_K_M.gguf
pause