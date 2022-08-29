@ECHO OFF
cls

pushd data
set LIBS=legacy_stdio_definitions.lib vcruntime.lib UCRT.LIB 

echo --- Basic Library ---
call apoc ..\Standard\C_Standard.apoc --no-link
call lib FileTwo.o %LIBS% /nologo /OUT:Basic.lib > NUL

echo --- Program ---
REM ..\Basic.apoc 
call apoc ..\Test.apoc ..\Standard\Basic.apoc ..\Standard\String.apoc ..\Standard\C_Standard.apoc --debug --optimize none --linker /subsystem:console
call a.exe
echo:
echo %errorlevel%
popd
