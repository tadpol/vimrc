" Vim filetype plugin file
" Language:	C
" Maintainer: Michael Conrad Tilsra <tadpol@tadpol.org>
" Last Change: Wed Mar 30 10:33:41 CDT 2011

setlocal ai cin et sw=4 ts=4

"nmap <buffer> ;t :.!~/scripts/funccmnt.pl<c-m>
"vmap <buffer> ;t <Esc>:'<,'>!~/scripts/funccmnt.pl<c-m>
"
" Wrap current lines with #if 0 #endif
nmap <buffer> ;f :set paste<CR>O#if 0<ESC>jo#endif<ESC>k:set nopaste<CR>
vmap <buffer> ;f <ESC>:set paste<CR>'<O#if 0<ESC>'>o#endif<ESC>'<:set nopaste<CR>
"
" Command to save text, and then make. Since I seem to do that alot.
" I'd use the autosave, but it saves in other events I don't want.
command! -bang MM wa<bang>|make
command! MC make clean
"
if !exists("*s:MakeJustThis")
  function! s:MakeJustThis()
    exe "make " . fnamemodify(bufname(winbufnr(0)),':r') . ".o"
  endfunc
endif
command! -bang MK w<bang> | call <SID>MakeJustThis()
"
" Switch between header and implementation.
if !exists("*s:SwitchHeaderImpl")
  function s:SwitchHeaderImpl()
    let fbase = fnamemodify(bufname(winbufnr(0)),':r')
    let ext = fnamemodify(bufname(winbufnr(0)),':e')
    " Convert the extention to its matching counter part.
    " This gets weird in some cases, so we check to see if there
    " is a near match existing file. If there is, we use that.
    if ext ==# "hpp"
      let ext = "cpp"
    elseif ext ==# "c"
      let ext = "h"
    elseif ext ==# "m"
      let ext = "h"
    elseif ext ==# "h"
      if filereadable( fbase . "." . "c" )
        let ext = "c"
      elseif filereadable( fbase . "." . "cpp" )
        let ext = "cpp"
      elseif filereadable( fbase . "." . "m" )
        let ext = "m"
      else
        let ext = "c"
      endif
    elseif ext ==# "cpp"
      if filereadable( fbase . "." . "h" )
        let ext = "h"
      else
        let ext = "hpp"
      endif
    endif
    " is it open?
    let nr = bufnr(fbase . "." . ext)
    if nr >= 0
      exe "buffer " . nr
    else
      " Switch to the found file
      exe "edit " . fbase . "." . ext
    endif
  endfunc
endif
map <buffer> <C-A-Up> :call <SID>SwitchHeaderImpl()<CR>

