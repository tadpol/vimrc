" Vim filetype plugin file
" Language:	vim
" Maintainer: Michael Conrad Tilsra <tadpol@tadpol.org>
" Last Change:	Wed Nov 28 17:10:07 CST 2001


setlocal ai cin et sw=2 ts=2
nmap <buffer> ;f :s/^/\"/<c-m>
vmap <buffer> ;f <esc>:'<,'>s/^/\"/<c-m>
