
if exists("b:did_indent")
	finish
endif

let b:did_indent = 1



setlocal cindent
setlocal cinoptions=L0,(0,Ws,J1,j1
setlocal cinkeys=0{,0},!^F,o,O,0[,0]

setlocal nosmartindent
setlocal nolisp
setlocal autoindent

setlocal indentkeys=0{,0},!^F,o,O,0[,0]

setlocal indentexpr=GetApocIndent(v:lnum)

if exists("*GetApocIndent")
	finish
endif

function! GetApocIndent(lnum)
	let prev = prevnonblank(a:lnum-1)

	if prev == 0
		return 0
	endif

	let prevline = getline(prev)
	let line = getline(a:lnum)

	let ind = indent(prev)

	if prevline =~ '[({]\s*$'
		let ind += $sw
	endif

	if line =~ '^\s*)}]'
		let ind -= $sw
	endif

	return ind
endfunction


