" Vim syntax file
" Language: TypeQL for TypeDB
" Maintainer: agrski <20504869+agrski@users.noreply.github.com>
" Last Change: 2022 Oct 09

" Based on the reserved keywords defined in TypeDB's documentation:
" https://docs.vaticle.com/docs/schema/overview#reserved-keywords

" Prelude {{{1
if exists("b:current_syntax")
  finish
endif

" Syntax matching options {{{1
syntax case match

setlocal iskeyword+=!
