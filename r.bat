@ECHO OFF
cls


pushd data
call ..\bin\apoc.exe ..\Test.apoc ..\FileTwo.apoc
call Test.exe
echo:
echo %errorlevel%
popd
