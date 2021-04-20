autocmd BufRead *.txt 
      \ if search('\vTELEMETRY|COMMAND', 'nw') 
      \ | setlocal ft=cosmos 
      \ | setlocal commentstring=#\ %s 
      \ | endif
