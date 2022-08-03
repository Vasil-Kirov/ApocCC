@ECHO OFF

pushd data
call ..\bin\apoc.exe ..\Test.apoc
call b.bat
call a.exe
popd
