if exists('b:current_syntax')
  finish
endif

" https://blog.delphinus.dev/2011/02/use-vim-conceal.html
syntax match csvSeparator "\v,"
syntax match csvValue "\v^[^,]{1,4}([^,]*,)@="
syntax match csvValue "\v(,)@<=[^,]{1,4}"
highlight link csvSeparator Operator
highlight link csvValue Constant

let b:current_syntax = 'csv'
