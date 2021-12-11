setlocal noexpandtab
let &l:shiftwidth = exists('g:csvim_column_width') ? g:csvim_column_width : 10
let &l:tabstop = exists('g:csvim_column_width') ? g:csvim_column_width : 10
setlocal list
" NOTE If tab appears twice in listchars, the latter one has higher proiority.
let &l:listchars = empty(&listchars)
  \ ? 'tab:, '
  \ : &listchars . ',tab:, '
