" myfiletypefile
" Maintainer: Michael Conrad Tadpol Tilstra <tadpol@tadpol.org>
" Last Modified: 2017-04-20T13:03-0500
augroup filetypedetect
  au! BufRead,BufNewFile *.moo     setfiletype moo
  au! BufRead,BufNewFile *.tfmcp*  setfiletype moo
  au! BufRead,BufNewFile *.mush    setfiletype mush
  au! BufRead,BufNewFile .tfrc     setfiletype tf
  au! BufRead,BufNewFile .ltfw     setfiletype ltfw
  au! BufRead,BufNewFile *.patch   setfiletype diff
  au! BufRead,BufNewFile *.yaml    setfiletype yaml
  au! BufRead,BufNewFile *.io      setfiletype io
  au! BufRead,BufNewFile *.srec    setfiletype srec
  au! BufRead,BufNewFile Vagrantfile   setfiletype ruby
augroup END

