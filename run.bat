MKDIR Paket
ECHO Remove old EXE file and download the new one
ERASE /Q /F "%~dp0Paket\JabraDirectSetup.exe"
ECHO Get New File
powershell -Command "Invoke-WebRequest https://jabraxpressonlineprdstor.blob.core.windows.net/jdo/JabraDirectSetup.exe -OutFile %~dp0Paket\JabraDirectSetup.exe"

ECHO Create the IntuneWin package
IntuneWinAppUtil.exe -c "%~dp0\Paket" -s "%~dp0\Paket\JabraDirectSetup.exe" -o "%~dp0"