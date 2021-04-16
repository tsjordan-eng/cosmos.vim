" Language:   COSMOS
" Maintainer: Tyler Jordan <tsjorda@sandia.gov>
" URL:        https://github.com/tsjordan-eng/comsmos.vim
" LICENSE:    MIT
" REFERENCE:  https://cosmosc2.com/docs/v4/

if exists('b:current_syntax')
  finish
endif

syn case match

" Generic "
syn match cFormat display "%\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlLjzt]\|ll\|hh\)\=\([aAbdiuoxXDOUfFeEgGcCsSpn]\|\[\^\=.[^]]*\]\)" contained
syn region String oneline start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=cFormat
hi def link cFormat SpecialChar
syn match Number /\<\<\d*\.*\d\+\>/ display
syn match Number /\<\<\(0x\)*\x*\.*\x\+\>/ display
syntax keyword Type INT UINT FLOAT DERIVED STRING BLOCK
syntax keyword Special BIG_ENDIAN LITTLE_ENDIAN
syn match Comment /^#.*$/ display

" Telemetry "
syntax keyword Statement TELEMETRY SELECT_TELEMETRY LIMITS_GROUP LIMITS_GROUP_ITEM
syntax keyword Keyword ITEM APPEND_ITEM ID_ITEM APPEND_ID_ITEM ARRAY_ITEM APPEND_ARRAY_ITEM SELECT_ITEM DELETE_ITEM META PROCESSOR ALLOW_SHORT HIDDEN
syntax keyword Function FORMAT_STRING UNITS DESCRIPTION META OVERLAP STATE READ_CONVERSION POLY_READ_CONVERSION SEG_POLY_READ_CONVERSION GENERIC_READ_CONVERSION_START GENERIC_READ_CONVERSION_END LIMITS LIMITS_RESPONSE

" Commands "
syntax keyword Statement COMMAND
syntax keyword Keyword PARAMETER APPEND_PARAMETER ID_PARAMETER APPEND_ID_PARAMETER ARRAY_PARAMETER APPEND_ARRAY_PARAMETER SELECT_PARAMETER DELETE_PARAMETER HIDDEN DISABLED DISABLE_MESSAGES META HAZARDOUS
syntax keyword Function FORMAT_STRING UNITS DESCRIPTION META OVERLAP REQUIRED MINIMUM_VALUE MAXIMUM_VALUE DEFAULT_VALUE STATE WRITE_CONVERSION POLY_WRITE_CONVERSION SEG_POLY_WRITE_CONVERSION GENERIC_WRITE_CONVERSION_START GENERIC_WRITE_CONVERSION_END OVERFLOW
let b:current_syntax = 'cosmos'
