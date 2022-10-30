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
syntax keyword typedbTqlNativeType          thing entity attribute relation role rule
syntax keyword typedbTqlDataType            long double string boolean datetime
syntax keyword typedbTqlTypeVarConstraint   abstract type sub sub! owns plays as regex when then relates @key
syntax keyword typedbTqlThingVarConstraint  has iid is isa isa! value
syntax keyword typedbTqlQueryCmd            define undefine match get insert delete compute
syntax keyword typedbTqlQueryModifier       offset limit sort asc desc
syntax keyword typedbTqlAggregateCmd        group count min max mean median std sum
syntax keyword typedbTqlOperator            or not
syntax keyword typedbTqlPredicate           = != < <= > >= like contains

" Comments {{{1
syntax keyword typedbTqlTodo contained TODO FIXME XXX NOTE
syntax match typedbTqlComment /#.*$/ contains=typedbTqlTodo

" Block {{{1
syntax match typedbTqlVar /\$[a-zA-Z-_]\+/ contained
syntax match typedbTqlBlockDelimiter /[{}()]/ contained
syntax region typedbTqlBlock
      \ start='{'
      \ end='}'
      \ contains=typedbTqlVar,typedbTqlThingVarConstraint,typedbTqlBlockDelimiter
      \ fold transparent

" Literals {{{1
syntax keyword  typedbTqlBoolean    false true
syntax match    typedbTqlString     /".*"/
syntax match    typedbTqlString     /'.*'/
syntax match    typedbTqlLong       /\v(\+|-)?[0-9]+/
syntax match    typedbTqlDouble     /\v(\+|-)?[0-9]+\.[0-9]+/
syntax match    typedbTqlDate       /\v([0-9]{4}|(\+|-)[0-9]+)-[0-1][0-9]-[0-3][0-9]/
syntax match    typedbTqlDateTime   /\v([0-9]{4}|(\+|-)[0-9]+)-[0-1][0-9]-[0-3][0-9]T[0-2][0-9]:[0-6][0-9](:[0-6][0-9](\.[0-9]{1,3})?)?/

" Default highlighting {{{1
highlight default link typedbTqlNativeType      Identifier
highlight default link typedbTqlDataType        Type
highlight default link typedbTqlTypeVarConstraint   Statement
highlight default link typedbTqlThingVarConstraint  Operator
highlight default link typedbTqlQueryCmd        Statement
highlight default link typedbTqlQueryModifier   Statement
highlight default link typedbTqlAggregateCmd    Statement
highlight default link typedbTqlOperator        Operator
highlight default link typedbTqlPredicate       Operator

highlight default link typedbTqlTodo            Todo
highlight default link typedbTqlComment         Comment

highlight default link typedbTqlVar             Identifier
highlight default link typedbTqlBlockDelimiter  Structure

highlight default link typedbTqlBoolean         Boolean
highlight default link typedbTqlString          String
highlight default link typedbTqlLong            Number
highlight default link typedbTqlDouble          Float
highlight default link typedbTqlDate            Constant
highlight default link typedbTqlDateTime        Constant
