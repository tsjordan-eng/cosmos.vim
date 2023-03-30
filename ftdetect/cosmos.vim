autocmd BufRead *.txt 
      \ if search('\v^TELEMETRY |^COMMAND |^DECLARE_TARGET |^SCREEN |^INTERFACE |^TARGET |^IGNORE_PARAMETER |APPEND_ITEM |APPEND_PARAMETER |^SELECT_TELEMETRY |^SELECT_COMMAND', 'nw') 
      \ | setlocal ft=cosmos 
      \ | setlocal commentstring=#\ %s 
      \ | endif
