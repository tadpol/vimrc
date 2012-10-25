" Vim filetype plugin file
" Language:	hmtl
" Maintainer: Michael Conrad Tilsra <tadpol@tadpol.org>
" Last Change:	Wed Nov 28 17:10:07 CST 2001

setlocal ai sw=2 ts=2

" block commenter for html
nmap <buffer> ;f O<!--<ESC>jo--><ESC>k
vmap <buffer> ;f <ESC>'<O<!--<ESC>'>o--><ESC>'<
"     ,L  = "Last updated" - replace old time stamp with a new one
"        preserving whitespace and using internal "strftime" command:
"       requires the abbreviation  "Ydate"
map <buffer> ,L  1G/Last update on\s*/e+1<CR><c-r>=strftime("%a %b %d %T %Z %Y")<cr><ESC>

