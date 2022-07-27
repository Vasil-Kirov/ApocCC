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

SET LLVM_INCLUDE=-I"E:\GitClone\llvm-project\llvm\include"
SET LinkerFlags=-luser32 -lShell32.lib
SET CompilerFlags=%CompilerFlags% -ffast-math -mavx -Wno-microsoft-enum-forward-reference
SET Includes=-I ..\src -I ..\include
SET BackendFiles=..\src\Code-Gen.cpp ..\src\C_Backend.cpp

PUSHD bin
REM clang++.exe -c -o backend.lib %BackendFiles% %CompilerFlags% %Includes% %LLVM_INCLUDE%
clang.exe -o apoc.exe %BackendFiles% ..\src\Main.c %CompilerFlags% %Includes% %LLVM_INCLUDE% %LinkerFlags%
POPD



:ERROR