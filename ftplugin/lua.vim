" Vim filetype plugin file
" Language:	Ruby
" Maintainer: Michael Conrad Tilsra <tadpol@tadpol.org>
" Last Change: 2016-06-08T06:46-0500
"

setlocal ai et sw=2 ts=2


nmap <buffer> ;f :set paste<CR>O--[======[<ESC>jo--]======]<ESC>k:set nopaste<CR>
vmap <buffer> ;f <ESC>:set paste<CR>'<O--[======[<ESC>'>o--]======]<ESC>'<:set nopaste<CR>


