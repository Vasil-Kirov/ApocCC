@ECHO OFF
cls

pushd data
set LIBS=legacy_stdio_definitions.lib vcruntime.lib UCRT.LIB 

echo --- Basic Library ---
call apoc ..\FileTwo.apoc --no-link
call lib FileTwo.o %LIBS% /nologo /OUT:Basic.lib > NUL

echo --- Program ---
call apoc ..\Test.apoc ..\FileTwo.apoc --linker Basic.lib /entry:_apoc_init
call a.exe
echo:
echo %errorlevel%
popd
