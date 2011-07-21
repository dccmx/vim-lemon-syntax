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
syn region  lemonComment          start="/\*" end="\*/" 
syn match   lemonInclude          /#.\+/
syn match   lemonDirective        /^%\(\w\|_\)\+\>.\+/ contains=lemonDirectiveArg
syn match   lemonDirectiveArg     /\s.\+$/ contained
syn match   lemonNonTerminal      /\<\l\w\+\>/
syn match   lemonTerminal         /\<\u\w\+\>/
syn match   lemonID               /(\w)/

hi def link lemonAssign           SpecialChar
hi def link lemonCode             Statement
hi def link lemonID               Identifier
hi def link lemonInclude          Include
hi def link lemonComment          Comment
hi def link lemonDirective        Define
hi def link lemonDirectiveArg     Normal
hi def link lemonNonTerminal      Type
hi def link lemonTerminal         Constant


