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
set completeopt=menu,longest
"
" NeoComplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_checkers = ['c/make']
let g:syntastic_lua_checkers = ['luacheck']
let g:syntastic_c_config_file=".syntastic_c_config"
let g:syntastic_html_tidy_blocklevel_tags=['nav']
"
if &t_Co > 2 || has("gui_running")
  syntax enable
endif
" the gui tweeks
if has("gui_running")
  "set background=dark
  set nobeval
  " turn off that ******** blinking cursor!!!
  set guicursor=a:blinkon0
  " and the toolbar and tearof menus
  set guioptions-=tT
  "set guifont=Fixed
  "set guifont=7x13
else
  let g:solarized_termtrans=1
  let g:solarized_termcolors=256
endif "has("gui_running")
" I just use solarized everywhere these days
let g:solarized_menu=0
colorscheme solarized
"
" airline
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
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
  au FileType lua           setlocal ai noet sw=2 ts=2
  au FileType ruby          setlocal ai et sw=2 ts=2
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
