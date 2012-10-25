" Vim Syntax File
" Language:     Io
" Maintainer:   Scott Dunlop <swdunlop@verizon.net>
" Last Change:  2003 Nov 10

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syntax case match

" equivalent to io-mode-prototype-names in io-mode.el
syntax keyword xType Array AudioDevice AudioMixer Block Box Buffer CFunction
syntax keyword xType CGI Color Curses DBM DNSResolver DOConnection DOProxy
syntax keyword xType DOServer Date Directory Duration DynLib Error Exception
syntax keyword xType FFT File Fnmatch Font Future GL GLE GLScissor GLU
syntax keyword xType GLUCylinder GLUQuadric GLUSphere GLUT Host Image Importer
syntax keyword xType LinkList List Lobby Locals MD5 MP3Decoder MP3Encoder Map
syntax keyword xType Message Movie NULL Nil Nop Notification Number Object
syntax keyword xType OpenGL Point Protos Regex SGMLTag SQLite Server
syntax keyword xType ShowMessage SleepyCat SleepyCatCursor Socket
syntax keyword xType SocketManager Sound Soup Store String Tree UDPSender
syntax keyword xType UPDReceiver URL User Warning WeakLink
syntax keyword xType true false nil

" equivalent to io-mode-message-names in io-mode.el
syntax keyword xStatement activate activeCoroCount and asString block break
syntax keyword xStatement catch clone collectGarbage compileString continue
syntax keyword xStatement do doFile doMessage doString else elseif exit for
syntax keyword xStatement foreach forward getSlot getenv hasSlot if ifFalse
syntax keyword xStatement ifNil ifTrue isActive isNil isResumable list message
syntax keyword xStatement method or parent pass pause perform
syntax keyword xStatement performWithArgList print proto raise raiseResumable
syntax keyword xStatement removeSlot resend resume return
syntax keyword xStatement schedulerSleepSeconds self sender
syntax keyword xStatement setSchedulerSleepSeconds setSlot shallowCopy
syntax keyword xStatement slotNames super system then thisBlock thisContext
syntax keyword xStatement call try type uniqueId updateSlot wait while
syntax keyword xStatement write yield

syntax region xString start=/"""/ skip=/\\"/ end=/"""/
syntax region xString start=/"/ skip=/\\"/ end=/"/
syntax region xComment start='#' end='$'
syntax region xComment start='//' end='$'
syntax region xComment start='/\*' end='\*/'
syntax region xOperator start="[+%/<>^&|-]" end=/\W/he=e-1 
syntax region xOperator start="[+%!=:<>/*&|-]" end="=" 
syntax region xOperator start="\.\." end=/\W/he=e-1 
syntax region xOperator start=">>" end=/\W/he=e-1 
syntax region xOperator start="<<" end=/\W/he=e-1 
syntax region xOperator start="<-" end=/\W/he=e-1 
syntax region xOperator start="<->" end=/\W/he=e-1 
syntax region xOperator start="->" end=/\W/he=e-1 
syntax region xOperator start="++" end=/\W/he=e-1 
syntax region xOperator start="--" end=/\W/he=e-1 
syntax region xOperator start="&&" end=/\W/he=e-1 
syntax region xOperator start="@" end=/@/ 
syntax region xOperator start="@" end=/[^@]/he=e-1 

highlight link xType Type
highlight link xStatement Statement
highlight link xString String
highlight link xComment Comment
highlight link xOperator Operator

let b:current_syntax = "io"

