" MOOcode syntax file
" Maintainer:	Bek Oberin <gossamer@glasswings.com.au>
" Last updated by root on Sat Sep 13 23:27:37 EST 1997
" Last updated by root on Tue Sep 16 13:59:28 EST 1997
"
" hacked upon by tadpol. <tadpol@tadpol.org>
" Last updated by tadpol on Thu Jul 19 10:41:13 CDT 2001

" Remove any old syntax stuff hanging around
syntax clear

"at commands
syntax keyword mooAtCommand @verb @program @create @prop @set

" global objects. 
syntax match mooGObj "\$[a-zA-Z_-]*"

" some constants
syntax keyword mooConst INT FLOAT STR LIST OBJ ERR

" functions
syntax match mooFunc ":\i\I*("

" builtin functions
syntax keyword mooBFunc abs acos add_property add_verb asin atan
syntax keyword mooBFunc binary_hash boot_player buffered_output_length
syntax keyword mooBFunc call_function caller_perms callers ceil children
syntax keyword mooBFunc chparent clear_property connected_players
syntax keyword mooBFunc connected_seconds connection_name connection_option
syntax keyword mooBFunc connection_options cos cosh create crypt ctime
syntax keyword mooBFunc db_disk_size decode_binary delete_property delete_verb
syntax keyword mooBFunc disassemble dump_database encode_binary equal eval
syntax keyword mooBFunc exp floatstr floor flush_input force_input
syntax keyword mooBFunc function_info idle_seconds index is_clear_property
syntax keyword mooBFunc is_member is_player kill_task length listappend
syntax keyword mooBFunc listdelete listen listeners listinsert listset log
syntax keyword mooBFunc log10 match max max_object memory_usage min move
syntax keyword mooBFunc notify object_bytes open_network_connection
syntax keyword mooBFunc output_delimiters parent pass players proprties
syntax keyword mooBFunc property_info queue_info queued_tasks raise random
syntax keyword mooBFunc read recycle renumber reset_max_object resume
syntax keyword mooBFunc rindex rmatch seconds_left server_log server_version
syntax keyword mooBFunc set_connection_option set_player_flag
syntax keyword mooBFunc set_property_info set_task_perms set_verb_args
syntax keyword mooBFunc set_verb_code set_verb_info setadd setremove sin
syntax keyword mooBFunc sinh sqrt strcmp string_hash strsub substitute
syntax keyword mooBFunc suspend tan tanh task_id task_stack ticks_left time
syntax keyword mooBFunc tofloat toint toliteral tonum toobj tostr trunc
syntax keyword mooBFunc typeof unlisten valid value_bytes value_hash
syntax keyword mooBFunc verb_args verb_code verb_info verbs

" regular moo commands
syntax keyword mooCommand   if else elseif endif try except endtry in
syntax keyword mooCommand   for endfor while endwhile pass setremove
syntax keyword mooCommand   tostr return continue is_player suspend
syntax keyword mooCommand   valid typeof idle_seconds length max time
syntax keyword mooCommand   toint fork endfork

syntax match mooSpecial     ";\|!\|=\|-\|\\\|+"

" numbers
syntax match mooNumber	+[0-9]\++

" A comment line starts with a ; at the start of the line
syntax keyword mooTodo contained	TODO FIXME XXX
syntax match	mooComment	+^ *".*$+	contains=mooTodo

" Variables
syntax keyword mooIdentifier this player caller dobj dobjstr iobj
syntax keyword mooIdentifier iobjstr args argstr

" Try to catch strings, else
"  vmEscapeBracket handles ["]  []"] (ie. stays as string)
syntax region	mooEscapeBracket	oneline contained transparent start="[^\\]\(\\\\\)*\[\^\=\]\=" skip="\\\\\|\\\]" end="\]"
syntax region	mooString	oneline start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=mooEscapeBracket
syntax region	mooString	oneline start=+'+ skip=+\\\\\|\\'+ end=+'+ contains=mooEscapeBracket

if !exists("did_moo_syntax_inits")
  let did_moo_syntax_inits = 1
  " The default methods for highlighting.  Can be overridden later
  hi link mooCommand    Statement
  hi link mooComment    Comment
  hi link mooNumber     Number
  hi link mooSpecial    Special
  hi link mooString     String
  hi link mooTodo       Todo
  hi link mooIdentifier Identifier
  hi link mooAtCommand  Statement
"  hi link mooAtCommandList  Statement
  hi link mooGObj Constant
  hi link mooConst Constant
  hi link mooFunc  Function
  hi link mooBFunc  Function
endif
" moo: ts=17
