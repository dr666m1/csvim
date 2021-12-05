" https://blog.delphinus.dev/2011/02/use-vim-conceal.html
syntax match csvSeparator "\v,"
syntax match csvValue "\v^[^,]*(,)@="
syntax match csvValue "\v(,)@<=[^,]*"
highlight link csvSeparator Operator
highlight link csvValue Constant
