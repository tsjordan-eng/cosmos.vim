autocmd BufRead *.txt 
      \ if search('\v^TELEMETRY |^COMMAND |^DECLARE_TARGET ', 'nw') 
      \ | setlocal ft=cosmos 
      \ | setlocal commentstring=#\ %s 
      \ | endif
