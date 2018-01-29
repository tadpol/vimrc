" Vim filetype plugin file
" Language:	javascript
" Maintainer: Michael Conrad Tadpol Tilsra <tadpol@tadpol.org>
" Last Change: 2018-01-29T13:57-0600

setlocal ai cin et sw=2 ts=2

"
" Wrap current lines with /* */
nmap <buffer> ;f :set paste<CR>O/*<ESC>jo*/<ESC>k:set nopaste<CR>
vmap <buffer> ;f <ESC>:set paste<CR>'<O/*<ESC>'>o*/<ESC>'<:set nopaste<CR>
"
