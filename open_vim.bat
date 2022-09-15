@ECHO OFF
SetLocal EnableDelayedExpansion

SET Files=
FOR /R %%f in (*.cpp *.h) do (
	SET Files=!Files! %%f
)

start nvim-qt %Files%
