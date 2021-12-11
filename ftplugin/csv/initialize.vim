if exists('b:loaded_csvim')
  finish
endif

let b:loaded_csvim = 1

function! s:Init()
  %substitute/\v,/	/g
endfunction

function! s:Exit()
  if &modified
    earlier 1f
  endif
  %substitute/\v\t/,/g
  write
endfunction

call <SID>Init()

augroup csvim
  autocmd! * <buffer>
  autocmd BufUnload <buffer> call <SID>Exit()
augroup END

function! s:SetColumnWidth(width)
  if &l:filetype !=# 'csv'
    echom "Don't call this function here! The filetype is not 'csv'."
    return
  endif
  let g:csvim_column_width = a:width
  setlocal filetype=csv
endfunction
command! -nargs=1 CSVimSetColumnWidth call <SID>SetColumnWidth(<f-args>)

inoremap <buffer> , <c-v><tab>
