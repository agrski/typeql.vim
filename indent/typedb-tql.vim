" Vim indent file
" Language:     TypeQL for TypeDB
" Maintainer:   agrski <20504869+agrski@users.noreply.github.com>
" Created:      2022 Oct 29
" Last Change:  2022 Oct 29

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

" https://psy.swansea.ac.uk/staff/carter/vim/vim_indent.htm
"
" define -> dedent to start of line
" , -> ensure indented to one level beyond last keyword = 1 indent
