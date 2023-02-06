" Language:   COSMOS
" Description:  Vim ftplugin for Cosmos
" Maintainer: Tyler Jordan <tsjorda@sandia.gov>
" LICENSE:    MIT
" REFERENCE:  https://cosmosc2.com/docs/v4/

if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

let b:match_words='\<VERTICAL\>\|\<VERTICALBOX\>\|\<HORIZONTAL\>\|\<HORIZONTALBOX\>\|\<MATRIXBYCOLUMNS\>\|\<SCROLLWINDOW\>\|\<TABBOOK\>\|\<TABITEM\>:END'
