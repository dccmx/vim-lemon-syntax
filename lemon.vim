" Language:     Lemon Parser Generator
" Maintainer:   Alex Little <alxlit@alxlit.name>
" URL:          http://github.com/alxlit/vim-lemon-grammar
" License:      WTFPL

if exists("b:current_syntax")
  finish
endif

if version < 600
  syntax clear
endif

let b:current_syntax = "lemon"

syn match   lemonAssign           /<::=>/
syn region  lemonCode             start="{" end="}" fold
syn match   lemonComment          /^\/\/.\+/
syn match   lemonDirective        /^%\(\w\|_\)\+\>.\+/ contains=lemonDirectiveArg
syn match   lemonDirectiveArg     /\s.\+$/ contained
syn match   lemonNonTerminal      /\<\l\w\+\>/
syn match   lemonTerminal         /\<\u\w\+\>/

hi def link lemonAssign           SpecialChar
hi def link lemonCode             String
hi def link lemonComment          Comment
hi def link lemonDirective        PreProc
hi def link lemonDirectiveArg     Normal
hi def link lemonNonTerminal      Type
hi def link lemonTerminal         Constant


