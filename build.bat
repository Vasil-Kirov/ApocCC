@ECHO OFF
CLS


IF [%1] == [] (
	ECHO --- DEBUG ---
	SET CompilerFlags=/Zi /Od /W3 /DDEBUG /GS
) ELSE IF [%1] == [release] (
	ECHO --- RELEASE ---
	SET CompilerFlags=/O2 /W4 /DRELEASE /GS-
) ELSE (
	ECHO ERROR: Unkown build type
	GOTO ERROR
)

SET LinkerFlags=kernel32.lib user32.lib gdi32.lib
SET CompilerFlags=%CompilerFlags% -nologo -msse3 -mavx
SET Includes=-I ..\src -I ..\include

PUSHD bin
clang-cl.exe %CompilerFlags% %Includes% ..\src\Main.c /link %LinkerFlags%
POPD



:ERROR