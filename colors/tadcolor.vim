" Vim color file
" Maintainer: Michael Conrad Tilstra <tadpol@tadpol.org>
" Last Change: Mon Mar 14 20:51:59 CST 2005
" dark, no bolds.

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
"colorsheme default
let g:colors_name = "tadcolor"

" Needs some work yet.

hi SpecialKey   term=bold ctermfg=9 guifg=Cyan
hi NonText      term=bold ctermfg=9 gui=bold guifg=Blue
hi Directory    term=bold ctermfg=11 guifg=Cyan
hi ErrorMsg     term=standout ctermfg=15 ctermbg=4 guifg=White guibg=Red
hi IncSearch    term=reverse cterm=reverse gui=reverse
hi Search       term=reverse ctermfg=0 ctermbg=14 guifg=Black guibg=Yellow
hi MoreMsg      term=bold ctermfg=10 gui=bold guifg=SeaGreen
hi ModeMsg      term=bold cterm=bold gui=bold
hi LineNr       term=underline ctermfg=14 guifg=Yellow
hi Question     term=standout ctermfg=10 gui=bold guifg=Green
hi StatusLine   term=bold,reverse cterm=bold,reverse gui=bold,reverse
hi StatusLineNC term=reverse cterm=reverse gui=reverse
hi VertSplit    term=reverse cterm=reverse gui=reverse
hi Title        term=bold ctermfg=13 gui=bold guifg=Magenta
hi Visual       term=reverse cterm=reverse gui=reverse guifg=Grey guibg=fg
hi VisualNOS    term=bold,underline cterm=bold,underline gui=bold,underline
hi WarningMsg   term=standout ctermfg=12 guifg=Red
hi WildMenu     term=standout ctermfg=0 ctermbg=14 guifg=Black guibg=Yellow
hi Folded       term=standout ctermfg=11 ctermbg=8 guifg=Cyan guibg=DarkGrey
hi FoldColumn   term=standout ctermfg=11 ctermbg=8 guifg=Cyan guibg=Grey
hi DiffAdd      term=bold ctermbg=1 guibg=DarkBlue
hi DiffChange   term=bold ctermbg=5 guibg=DarkMagenta
hi DiffDelete   term=bold ctermfg=9 ctermbg=3 gui=bold guifg=Blue guibg=DarkCyan
hi DiffText     term=reverse cterm=bold ctermbg=12 gui=bold guibg=Red
hi Cursor       guifg=bg guibg=fg
hi lCursor      guifg=bg guibg=fg
hi Normal       guifg=gray80 guibg=black
hi Comment      term=NONE ctermfg=DarkCyan guifg=#80a0ff
hi Constant     term=NONE ctermfg=13 guifg=#ffa0a0
hi Special      term=NONE ctermfg=12 guifg=Orange
hi Identifier   term=NONE cterm=NONE ctermfg=11 guifg=#40ffff
hi Statement    term=NONE ctermfg=14 gui=NONE guifg=#ffff60
hi PreProc      term=NONE ctermfg=9 guifg=#ff80ff
hi Type         term=NONE ctermfg=10 gui=NONE guifg=#60ff60
hi Underlined   term=underline cterm=underline ctermfg=9 gui=underline
hi Ignore       ctermfg=0 guifg=bg
hi Error        term=reverse ctermfg=15 ctermbg=12 guifg=White guibg=Red
hi Todo         term=standout ctermfg=0 ctermbg=14 guifg=Blue guibg=Yellow

