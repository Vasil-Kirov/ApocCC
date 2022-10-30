@ECHO OFF
SetLocal EnableDelayedExpansion

SET Files=
FOR /R %%f in (*.cpp *.h *.apoc) do (
	SET Files=!Files! %%f
)

echo %Files%

IF [%1] == [gui] (
	start nvim-qt %Files%
) ELSE (
	nvim %Files%
)
