setlocal noexpandtab
let &l:shiftwidth = exists('g:csvim_column_width') ? g:csvim_column_width : 10
let &l:tabstop = exists('g:csvim_column_width') ? g:csvim_column_width : 10
