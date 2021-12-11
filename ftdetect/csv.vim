autocmd BufNewFile,BufRead *.csv
  \ if match(getline(0, '$'), '\v\t') ==# -1 |
  \   set filetype=csv |
  \ endif
