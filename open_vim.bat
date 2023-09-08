@ECHO OFF
SetLocal EnableDelayedExpansion

E:
pushd \C_Projects\ApocCompiler

SET Files=
FOR /R %%f in (*.cpp *.h *.apoc) do (
	SET Files=!Files! %%f
)

popd
W:

IF [%1] == [gui] (
	start nvim-qt %Files%
) ELSE (
	nvim %Files%
)
