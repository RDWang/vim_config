" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Steven Vertigan <steven@vertigan.wattle.id.au>
" Last Change:	2006 Sep 23
" Revision #5: Switch main text from white to black for easier contrast,
" fixed some problems with terminal backgrounds.

set background=light
set number
"hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "mycolor"
hi Normal guibg=#99cc99 guifg=Black
hi LineNr guibg=#003366 guifg=#99ccff ctermbg=7777 ctermfg=blue
set cursorline
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=#66cc99 guifg=black

