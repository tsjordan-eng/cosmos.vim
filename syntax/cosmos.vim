" Language:   COSMOS
" Maintainer: Tyler Jordan <tsjorda@sandia.gov>
" URL:        
" LICENSE:    MIT

if exists('b:current_syntax')
  finish
endif

syn case match
syntax keyword Statement TELEMETRY SELECT_TELEMETRY LIMITS_GROUP LIMITS_GROUP_ITEM
syntax keyword Keyword ITEM APPEND_ITEM ID_ITEM APPEND_ID_ITEM ARRAY_ITEM APPEND_ARRAY_ITEM SELECT_ITEM DELETE_ITEM META PROCESSOR ALLOW_SHORT HIDDEN
syntax keyword Function FORMAT_STRING UNITS DESCRIPTION META OVERLAP STATE READ_CONVERSION POLY_READ_CONVERSION SEG_POLY_READ_CONVERSION GENERIC_READ_CONVERSION_START GENERIC_READ_CONVERSION_END LIMITS LIMITS_RESPONSE
syntax keyword Type INT UINT FLOAT DERIVED STRING BLOCK
syntax keyword Special BIG_ENDIAN LITTLE_ENDIAN
" syn match String /"[^"]*"/ display
syn region String oneline start=/"/ skip=/\\\\\|\\"/ end=/"/
syn match Number /\<\<\d*\.*\d\+\>/ display
syn match Number /\<\<\(0x\)*\x*\.*\x\+\>/ display

let b:current_syntax = 'cosmos'
