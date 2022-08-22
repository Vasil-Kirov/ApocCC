@ECHO OFF
cls

pushd data
set LIBS=legacy_stdio_definitions.lib vcruntime.lib UCRT.LIB 

REM echo --- Basic Library ---
REM call apoc ..\FileTwo.apoc --no-link
REM call lib FileTwo.o %LIBS% /nologo /OUT:Basic.lib > NUL

echo --- Program ---
call apoc ..\Test.apoc --debug --linker /entry:_apoc_init /subsystem:console Basic.lib
call a.exe
echo:
echo %errorlevel%
popd
