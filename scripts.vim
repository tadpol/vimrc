"
" Maintainer: Michael Conrad Tadpol Tilstra <tadpol@tadpol.org>
" Last Modified: Fri Sep 10 14:13:31 CDT 2004
if did_filetype()
	finish
endif

" try to detect a knews temp file.
if getline(1) =~ '^X-Newsreader: knews'
 setfiletype mail
endif

" lazy try to detect yaml files.
if getline(1) =~ '^---$'
 setfiletype yaml
endif
