" Vim syntax file
" Language:     Apoc
" Maintainer:   VK
" Last Change:  Sep 10, 2022
" Based on the apoc syntax file

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

" Syntax definitions {{{1
" Basic keywords {{{2
syn keyword   apocConditional match if else
syn keyword   apocRepeat for
syn keyword   apocStructure struct enum nextgroup=apocIdentifier skipwhite skipempty
syn keyword   apocDefer defer

syn keyword   apocKeyword     break
syn keyword   apocKeyword     continue
syn keyword   apocKeyword     fn nextgroup=apocFnName skipwhite skipempty

syn match     apocIdentifier  contains=apocIdentifierPrime "\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*" display contained
syn match     apocFnName      "\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*" display contained

syn region    apocBoxPlacement matchgroup=apocBoxPlacementParens start="(" end=")" contains=TOP contained
" Ideally we'd have syntax rules set up to match arbitrary expressions. Since
" we don't, we'll just define temporary contained rules to handle balancing
" delimiters.
syn region    apocBoxPlacementBalance start="(" end=")" containedin=apocBoxPlacement transparent
syn region    apocBoxPlacementBalance start="\[" end="\]" containedin=apocBoxPlacement transparent

" Built-in types {{{2
syn keyword   apocType        bool u8 u16 u32 u64 u128 f32
syn keyword   apocType        f64 i8 i16 i32 i64 i128 string
syn keyword   apocType        Type_Info Any String_Builder

syn keyword   apocBoolean     true false
syn keyword   apocNull        null

" If foo::bar changes to foo.bar, change this ("::" to "\.").
" If foo::bar changes to Foo::bar, change this (first "\w" to "\u").
syn match     apocAccessor  "\."

syn match     apocFuncCall    "\w\(\w\)*("he=e-1,me=e-1

syn match     apocOperator     display "\%(+\|-\|/\|*\|=\|\^\|&\||\|!\|>\|<\|%\)=\?"
" This one isn't *quite* right, as we could have binary-& with a reference
syn match     apocSigil        display /&\s\+[&~@*][^)= \t\r\n]/he=e-1,me=e-1
syn match     apocSigil        display /[&~@*][^)= \t\r\n]/he=e-1,me=e-1
" This isn't actually correct; a closure with no arguments can be `|| { }`.
" Last, because the & in && isn't a sigil

syn match     apocEscapeError   display contained /\\./
syn match     apocEscape        display contained /\\\([nrt0\\'"]\|x\x\{2}\)/
syn match     apocEscapeUnicode display contained /\\u{\x\{1,6}}/
syn match     apocStringContinuation display contained /\\\n\s*/
syn region    apocString      start=+b"+ skip=+\\\\\|\\"+ end=+"+ contains=apocEscape,apocEscapeError,apocStringContinuation
syn region    apocString      start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=apocEscape,apocEscapeUnicode,apocEscapeError,apocStringContinuation,@Spell
syn region    apocString      start='b\?r\z(#*\)"' end='"\z1' contains=@Spell

" Number literals
syn match     apocDecNumber   display "\<[0-9][0-9_]*\%([iu]\%(size\|8\|16\|32\|64\|128\)\)\="
syn match     apocHexNumber   display "\<0x[a-fA-F0-9_]\+\%([iu]\%(size\|8\|16\|32\|64\|128\)\)\="
syn match     apocOctNumber   display "\<0o[0-7_]\+\%([iu]\%(size\|8\|16\|32\|64\|128\)\)\="
syn match     apocBinNumber   display "\<0b[01_]\+\%([iu]\%(size\|8\|16\|32\|64\|128\)\)\="

" Special case for numbers of the form "1." which are float literals, unless followed by
" an identifier, which makes them integer literals with a method call or field access,
" or by another ".", which makes them integer literals followed by the ".." token.
" (This must go first so the others take precedence.)
syn match     apocFloat       display "\<[0-9][0-9_]*\.\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\|\.\)\@!"
syn match     apocFloat       display "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\%([eE][+-]\=[0-9_]\+\)\=\(f32\|f64\)\="
syn match     apocFloat       display "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\=\%([eE][+-]\=[0-9_]\+\)\(f32\|f64\)\="
syn match     apocFloat       display "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\=\%([eE][+-]\=[0-9_]\+\)\=\(f32\|f64\)"

" The groups negated here add up to 0-255 but nothing else (they do not seem to go beyond ASCII).
syn match   apocCharacterInvalidUnicode   display contained /b'\zs[^[:cntrl:][:graph:][:alnum:][:space:]]\ze'/
syn match   apocCharacter   /b'\([^\\]\|\\\(.\|x\x\{2}\)\)'/ contains=apocEscape,apocEscapeError,apocCharacterInvalid,apocCharacterInvalidUnicode
syn match   apocCharacter   /'\([^\\]\|\\\(.\|x\x\{2}\|u{\x\{1,6}}\)\)'/ contains=apocEscape,apocEscapeUnicode,apocEscapeError,apocCharacterInvalid

syn match apocShebang /\%^#![^[].*/
syn region apocCommentBlock             matchgroup=apocCommentBlock         start="/\*\%(!\|\*[*/]\@!\)\@!" end="\*/" contains=apocTodo,apocCommentBlockNest,@Spell
syn region apocCommentBlockDoc          matchgroup=apocCommentBlockDoc      start="/\*\%(!\|\*[*/]\@!\)"    end="\*/" contains=apocTodo,apocCommentBlockDocNest,@Spell
syn region apocCommentBlockDocError     matchgroup=apocCommentBlockDocError start="/\*\%(!\|\*[*/]\@!\)"    end="\*/" contains=apocTodo,apocCommentBlockDocNestError,@Spell contained
syn region apocCommentBlockNest         matchgroup=apocCommentBlock         start="/\*"                     end="\*/" contains=apocTodo,apocCommentBlockNest,@Spell contained transparent
syn region apocCommentBlockDocNest      matchgroup=apocCommentBlockDoc      start="/\*"                     end="\*/" contains=apocTodo,apocCommentBlockDocNest,@Spell contained transparent
syn region apocCommentBlockDocNestError matchgroup=apocCommentBlockDocError start="/\*"                     end="\*/" contains=apocTodo,apocCommentBlockDocNestError,@Spell contained transparent

syn match apocCompilerArg "\$" nextgroup=apocIdentifierPrime

syn keyword apocTodo contained @TODO @FIXME @XXX @NB @NOTE @CLEANUP @OPTIMIZE

" Folding rules {{{2
" Trivial folding rules to begin with.
" FIXME: use the AST to make really good folding
syn region apocFoldBraces start="{" end="}" transparent fold
syn match apocArrow "->" containedin=apocOperator
syn match apocDefine ":="

" Default highlighting {{{1
hi def link apocDecNumber       apocNumber
hi def link apocHexNumber       apocNumber
hi def link apocOctNumber       apocNumber
hi def link apocBinNumber       apocNumber
hi def link apocIdentifierPrime apocIdentifier

hi def link apocSigil                   StorageClass
hi def link apocEscape                  Special
hi def link apocEscapeUnicode           apocEscape
hi def link apocEscapeError             Error
hi def link apocStringContinuation      Special
hi def link apocString                  String
hi def link apocCharacterInvalid        Error
hi def link apocCharacterInvalidUnicode apocCharacterInvalid
hi def link apocCharacter               Character
hi def link apocNumber                  Number
hi def link apocBoolean                 Boolean
hi def link apocEnum                    apocType
hi def link apocEnumVariant             apocConstant
hi def link apocConstant                Constant
hi def link apocFloat                   Float
hi def link apocOperator                Operator
hi def link apocKeyword                 Keyword
hi def link apocStructure               Keyword " More precise is Structure
hi def link apocPubScopeDelim           Delimiter
hi def link apocReservedKeyword         Error
hi def link apocRepeat                  Conditional
hi def link apocConditional             Conditional
hi def link apocIdentifier              Identifier
hi def link apocCapsIdent               apocIdentifier
hi def link apocModPath                 Include
hi def link apocModPathSep              Delimiter
hi def link apocFunction                Function
hi def link apocFuncName                Function
hi def link apocFuncCall                Function
hi def link apocShebang                 Comment
hi def link apocCommentLine             Comment
hi def link apocCommentLineDoc          SpecialComment
hi def link apocCommentLineDocError     Error
hi def link apocCommentBlock            apocCommentLine
hi def link apocCommentBlockDoc         apocCommentLineDoc
hi def link apocCommentBlockDocError    Error
hi def link apocType                    Type
hi def link apocTodo                    Todo
hi def link apocAttribute               PreProc
hi def link apocStorage                 StorageClass
hi def link apocObsoleteStorage         Error
hi def link apocCompilerArg             PreProc
hi def link apocNull                    Boolean
hi def link apocDefer                   Keyword
hi def link apocArrow                   Special
hi def link apocDefine                  Special

" Other Suggestions:
" hi apocDerive ctermfg=cyan
" hi apocAssert ctermfg=yellow
" hi apocPanic ctermfg=red
" hi apocMacro ctermfg=magenta

syn sync minlines=200
syn sync maxlines=500

let b:current_syntax = "apoc"
