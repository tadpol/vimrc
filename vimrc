" This is my vimrc.  wow.
"
" Maintained: Michael Conrad Tadpol Tilstra <tadpol@tadpol.org>
"
"==================
" Some simple settings.
set background=light
set backspace=2
set nobackup
"set backupext=~
"set digraph
set formatoptions=tcql
set encoding=utf-8
set incsearch
set joinspaces
set laststatus=2
set listchars=tab:»·,trail:·,extends:»,precedes:«
set modeline
set modelines=3
set mousehide
set nocompatible
set noequalalways
set noerrorbells
set nohlsearch
set noignorecase
set ruler
set shiftwidth=4
set showcmd
set showmatch
set showmode
set splitbelow
set title
set tabstop=4
set viminfo='100,f1,\"500,\h,:20,/20
set visualbell
set wrapmargin=5
set nowrap
" 
let c_syntax_for_h = 1
let mapleader = ";"
"
" Get pathogen running. (must be before the filetype command)
call pathogen#infect()
call pathogen#helptags()
"
filetype plugin indent on
"
set omnifunc=syntaxcomplete#Complete
set completeopt=menu,longest,preview
"
if &t_Co > 2 || has("gui_running")
  syntax enable
endif
" the gui tweeks
if has("gui_running")
  set background=dark
  set nobeval
  " turn off that ******** blinking cursor!!!
  set guicursor=a:blinkon0
  " and the toolbar and tearof menus
  set guioptions-=tT
  "set guifont=Fixed
  "set guifont=7x13
endif "has("gui_running")
" Colour fixes.  This over use of bold is pissing me off.
" so much here i just made my own color scheme.
colorscheme tadcolor
"
"Suffixes that get lower priority when tabbing
set suffixes+=.d,.a,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
"
"==================
" some abreviations
iab Ypass "You are in a maze of twisty little passages, all alike."
iab Ydate <C-R>=strftime("%Y-%m-%dT%H:%M%z")<CR>
"
"===================
" some nifty macros.
"
nnoremap Q gq
vnoremap Q gq
"
"===================
" Autocommands
"  The verbose=9 gets turned on for debugging new autocmds.
"set verbose=9
"
if !exists("my_autocommands_loaded")
  let my_autocommands_loaded=1
  au FileType asm           setlocal ai cin et sw=8 ts=8
  au FileType cvs           setlocal ai sw=4 ts=4 com=fb:- fo=t2ql wm=10
  au FileType taskpaper     setlocal ai noet sw=2 ts=2
"end of my autocommands.
endif
"
"
command CW :set columns=100
command DW :set columns=161
" SingleWidth is half of my laptop
command SW :set columns=89
" FullWidth is the whole screen of my laptop
command FW :set columns=180
"
" tagList settings
let Tlist_Use_Right_Window=1
command TW :TlistToggle
"
" Platform specific things
if has("gui_macvim")
  "let Tlist_Ctags_Cmd = '/opt/local/bin/ctags'
  "let g:ctags_command = '/opt/local/bin/ctags -R .'

  nmap <silent> <leader>d <Plug>DashSearch
endif
if has("gui_win32")
  let Tlist_Ctags_Cmd = 'c:\other_tools\ctags.exe'
  let g:ctags_command = 'c:\other_tools\ctags.exe -R .'

  set cscopeprg=c:\cygwin\bin\mlcscope.exe
  set grepprg=internal
endif
"
" vim: set ai cin et sw=2 ts=2 :
