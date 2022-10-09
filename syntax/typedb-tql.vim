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

" Keywords {{{1
syn keyword typedbTqlNativeType     thing entity attribute relation role
syn keyword typedbTqlDataType       long double string boolean datetime
syn keyword typedbTqlQueryCmd       define undefine match get insert delete
syn keyword typedbTqlQueryModifier  offset limit group sort asc desc
syn keyword typedbTqlStatementProp  abstract as has iid isa isa! owns plays regex relates rule sub sub! then type value when
syn keyword typedbTqlOperator       is like or not
syn keyword typedbTqlLiteral        false true

