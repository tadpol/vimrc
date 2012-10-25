" myfiletypefile
" Maintainer: Michael Conrad Tadpol Tilstra <tadpol@tadpol.org>
" Last Modified: Wed Dec 21 10:04:46 CST 2011 
augroup filetypedetect
  au! BufRead,BufNewFile *.moo     setfiletype moo
  au! BufRead,BufNewFile *.tfmcp*  setfiletype moo
  au! BufRead,BufNewFile *.mush    setfiletype mush
  au! BufRead,BufNewFile .tfrc     setfiletype tf
  au! BufRead,BufNewFile .ltfw     setfiletype ltfw
  au! BufRead,BufNewFile *.patch   setfiletype diff
  au! BufRead,BufNewFile *.yaml   setfiletype yaml
  au! BufRead,BufNewFile *.io   setfiletype io
  au! BufRead,BufNewFile *.srec   setfiletype srec
augroup END

