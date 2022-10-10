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
syntax keyword typedbTqlNativeType     thing entity attribute relation role
syntax keyword typedbTqlDataType       long double string boolean datetime
syntax keyword typedbTqlQueryCmd       define undefine match get insert delete
syntax keyword typedbTqlQueryModifier  offset limit group sort asc desc
syntax keyword typedbTqlStatementProp  abstract as has iid isa isa! owns plays regex relates rule sub sub! then type value when
syntax keyword typedbTqlOperator       is like or not
syntax keyword typedbTqlLiteral        false true

" Comments {{{1
syntax keyword typedbTqlTodo contained TODO FIXME XXX NOTE
syntax match typedbTqlComment /#.*$/ contains=typedbTqlTodo

" Strings {{{1
syntax match typedbTqlString /".*"/

" Default highlighting {{{1
highlight default link typedbTqlNativeType      Identifier
highlight default link typedbTqlDataType        Type
highlight default link typedbTqlQueryCmd        Statement
highlight default link typedbTqlQueryModifier   Statement
highlight default link typedbTqlStatementProp   Statement
highlight default link typedbTqlOperator        Operator
highlight default link typedbTqlLiteral         Constant
highlight default link typedbTqlTodo            Todo
highlight default link typedbTqlComment         Comment
highlight default link typedbTqlString          String

