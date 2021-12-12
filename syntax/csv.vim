if exists('b:current_syntax')
  finish
endif

execute
  \ 'syntax region csvConcealed start=/\v(\t[^\t]{'
  \ . string(exists('g:csvim_column_width') ? g:csvim_column_width - 2 : 8)
  \ . '})@<=[^\t]/ start=/\v(^[^\t]{'
  \ . string(exists('g:csvim_column_width') ? g:csvim_column_width - 2 : 8)
  \ . '})@<=[^\t]/ end=/\v(\t)@=/ end=/\v$/ conceal cchar=»'

let b:current_syntax = 'csv'
