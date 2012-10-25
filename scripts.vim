"
" Maintainer: Michael Conrad Tadpol Tilstra <tadpol@tadpol.org>
" Last Modified: Thu Oct 25 14:04:16 CDT 2012
if did_filetype()
	finish
endif

" lazy try to detect yaml files.
if getline(1) =~ '^---$'
 setfiletype yaml
endif
