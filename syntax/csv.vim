if exists('b:current_syntax')
  finish
endif

" https://blog.delphinus.dev/2011/02/use-vim-conceal.html
syntax region csvValue start=/\v(\t)@<=[^\t]/ start=/\v^[^\t]/ end=/\v(\t)@=/ end=/\v$/
highlight link csvSeparator Operator
highlight link csvValue Constant

let b:current_syntax = 'csv'
