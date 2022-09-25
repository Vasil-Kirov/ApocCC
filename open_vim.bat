@ECHO OFF
SetLocal EnableDelayedExpansion

SET Files=
FOR /R %%f in (*.cpp *.h *.apoc) do (
	SET Files=!Files! %%f
)

start nvim-qt %Files%
