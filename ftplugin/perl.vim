" Vim filetype plugin file
" Language: perl
" Maintainer: Michael Conrad Tilsra <tadpol@tadpol.org>
" Last Change:  Wed Nov 28 17:10:07 CST 2001


setlocal ai cin et sw=3 ts=3
nmap <buffer> ;f :s/^/#/<c-m>
vmap <buffer> ;f <esc>:'<,'>s/^/#/<c-m>
"vmap ;f <esc>'<Oif 0 {<esc>'>o}#if 0<esc>'<
