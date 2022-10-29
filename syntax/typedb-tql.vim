" Vim syntax file
" Language:     TypeQL for TypeDB
" Maintainer:   agrski <20504869+agrski@users.noreply.github.com>
" Created:      2022 Oct 09
" Last Change:  2022 Oct 29

" Based on the ANTLR grammar defined for TypeQL:
" https://github.com/vaticle/typeql/blob/fd78c825e87058293290d4801834593823a329a8/grammar/TypeQL.g4

" Prelude {{{1
if exists("b:current_syntax")
  finish
endif

" Syntax matching options {{{1
syntax case match

setlocal iskeyword+=!

" Keywords {{{1
syntax keyword typedbTqlNativeType     thing entity attribute relation role rule
syntax keyword typedbTqlDataType       long double string boolean datetime
syntax keyword typedbTqlTypeVarConstraint abstract type sub sub! owns plays as regex when then relates @key
syntax keyword typedbTqlQueryCmd       define undefine match get insert delete compute
syntax keyword typedbTqlQueryModifier  offset limit sort asc desc
syntax keyword typedbTqlThingVarConstraint  has iid is isa isa! value
syntax keyword typedbTqlOperator       like or not
syntax keyword typedbTqlLiteral        false true

" Comments {{{1
syntax keyword typedbTqlTodo contained TODO FIXME XXX NOTE
syntax match typedbTqlComment /#.*$/ contains=typedbTqlTodo

" Block {{{1
syntax match typedbTqlVar /\$[a-zA-Z-_]\+/ contained
syntax match typedbTqlBlockDelimiter /[{}()]/ contained
syntax region typedbTqlBlock start='{' end='}' contains=typedbTqlVar,typedbTqlStatementProp,typedbTqlBlockDelimiter fold transparent

" Strings {{{1
syntax match typedbTqlString /".*"/

" Default highlighting {{{1
highlight default link typedbTqlNativeType      Identifier
highlight default link typedbTqlDataType        Type
highlight default link typedbTqlQueryCmd        Statement
highlight default link typedbTqlQueryModifier   Statement
highlight default link typedbTqlThingVarConstraint   Statement
highlight default link typedbTqlOperator        Operator
highlight default link typedbTqlLiteral         Constant

highlight default link typedbTqlTodo            Todo
highlight default link typedbTqlComment         Comment

highlight default link typedbTqlVar             Identifier
highlight default link typedbTqlBlockDelimiter  Structure

highlight default link typedbTqlString          String

