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
