" Vim filetype plugin file
" Language:	TCL
" Maintainer: Michael Conrad Tilsra <tadpol@tadpol.org>
" Last Change:	5Jan2011 10:00AM


setlocal ai noet sw=4 ts=4

" Wrap current lines with #if 0 #endif
nmap <buffer> ;f :set paste<CR>Oif {0} {<ESC>jo}<ESC>k:set nopaste<CR>
vmap <buffer> ;f <ESC>'<:set paste<CR>Oif {0} {<ESC>'>o}<ESC>'<:set nopaste<CR>

