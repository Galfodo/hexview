@SETLOCAL
@FOR /F "usebackq delims=" %%i IN (`python -c "import sys; print(f'{sys.exec_prefix}\\Scripts',end='')"`) DO SET SCRIPTS_PATH=%%i
python %SCRIPTS_PATH%\hexview %*