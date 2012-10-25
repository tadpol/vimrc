" Vim filetype plugin file
" Language: tex
" Maintainer: Michael Conrad Tilsra <tadpol@tadpol.org>
" Last Change:  Wed Nov 28 17:10:07 CST 2001

setlocal ai nocin et sw=2 ts=2
setlocal formatoptions=tcql2
"
nmap <buffer> ;f :s/^/%/<c-m>
vmap <buffer> ;f <esc>:'<,'>s/^/%/<c-m>
"
nmap <buffer> ;v O\begin{verbatim}<ESC>jo\end{verbatim}<ESC>k
vmap <buffer> ;v <ESC>'<O\begin{verbatim}<ESC>'>o\end{verbatim}<ESC>'<
