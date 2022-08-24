@ECHO OFF
cls

pushd data
set LIBS=legacy_stdio_definitions.lib vcruntime.lib UCRT.LIB 

echo --- Basic Library ---
call apoc ..\FileTwo.apoc --no-link
call lib FileTwo.o %LIBS% /nologo /OUT:Basic.lib > NUL

echo --- Program ---
REM ..\Basic.apoc 
call apoc ..\Test.apoc ..\Basic.apoc --debug --linker /entry:_apoc_init /subsystem:console Basic.lib
call a.exe
echo:
echo %errorlevel%
popd
