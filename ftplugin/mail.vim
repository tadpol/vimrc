" Vim filetype plugin file
" Language:	mail
" Maintainer: Michael Conrad Tilsra <tadpol@tadpol.org>
" Last Change:	Fri Feb 06 15:53:22 CST 2004


setlocal noai nocin et sw=4 ts=4
setlocal wrap wrapmargin=7 columns=80
setlocal comments=fb:-,n:>
setlocal formatoptions=t2ql
setlocal nobackup


" uppercase V will run ispell -x (-x tells it not to save backups) on current
" file
map <buffer> V :w<c-m>:!ispell -x %<c-m>:e!<c-m><c-m>
map <buffer> ]s :r!~/scripts/randsig.pl<c-m>
"
" keep this one????
"     ,kqs = kill quoted sig (to remove those damn sigs for replies)
"          goto end-of-buffer, search-backwards for a quoted sigdashes
"          line, ie "^> -- $", and delete unto end-of-paragraph:
map <buffer> ,kqs G?^> -- $<CR>d}
" map ,kqs G?^> *-- $<CR>dG
"     ,kqs = kill quoted sig unto start of own signature:
" map ,kqs G?^> *-- $<CR>d/^-- $/<C-M>
"
" 950330 ,dp = dequote current paragraph
map <buffer> ,dp {jma}kmb:'a,'bs/^> *//
" 950330 ,qp = quote current paragraph
map <buffer> ,qp {jma}kmb:'a,'bs/^/> /
"
" cute thing i do for news sigs.
nmap <buffer> ;c :.,.!boxes -a hcvtjc -d tadcom<cr>
vmap <buffer> ;c <esc>:'<,'>!boxes -a hcvtjc -d tadcom<cr>
