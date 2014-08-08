" Vim global plugin for appending a modeline with current settings.
" Last Change: Fri Nov 30 11:23:50 CST 2001
" Maintainer: Michael Conrad Tilsra <tadpol@tadpol.org>

if exists("loaded_write_modeline")
  finish
endif
let loaded_write_modeline = 1

"==
" Make_modeline
"  builds a mode line that can be added to a file with the current
"  settings.
function s:Make_modeline()
  let ml = "vim: set "
  if &ai == 1
    let ml = ml . "ai "
  endif
  if &cin == 1
    let ml = ml . "cin "
  endif
  if &et == 1
    let ml = ml . "et "
  endif
  let ml = ml . "sw=" . &sw . " "
  let ml = ml . "ts=" . &ts . " "

  "quick hack to get comments.
  " should pull these out somehow..
  if &ft == "c"
    let ml = "/* " . ml . ": */"
  elseif &ft == "cpp"
    let ml = "// " . ml . ":"
  elseif &ft == "java"
    let ml = "// " . ml . ":"
  elseif &ft == "vim"
    let ml = "\" " . ml . ":"
  elseif &ft == "lua"
    let ml = "--" . ml . ":"
  else
    let ml = "#  " . ml . ":"
  endif

  return ml
endfunc

" and a macro to add it.
nmap <unique> <Leader>m mzGo<c-r>=<SID>Make_modeline()<cr><esc>'z

