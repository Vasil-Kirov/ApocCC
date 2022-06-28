@ECHO OFF

SetLocal EnableDelayedExpansion

CLS

goto comment

:comment

IF [%1] == [] (
	ECHO --- DEBUG ---
	
	SET CompilerFlags=-g -O0 -Wall -DDEBUG
) ELSE IF [%1] == [release] (
	ECHO --- RELEASE ---

	SET CompilerFlags=-O3 -Wall -DRELEASE
) ELSE IF [%1] == [bounds] (
	ECHO --- BOUNDS ---

	SET CompilerFlags=-O0 -Wall -DDEBUG -fsanitize=address
) ELSE (
	ECHO ERROR: Unkown build type
	GOTO ERROR
)


SET LinkerFlags=-luser32 -lGdi32 -lOpenGL32
SET CompilerFlags=%CompilerFlags% -ffast-math -mavx
SET Includes=-I ..\src -I ..\include

PUSHD bin
clang.exe -o apoc.exe %CompilerFlags% %Includes% ..\src\Main.c ..\src\Code-Gen.cpp %LinkerFlags%
POPD



:ERROR