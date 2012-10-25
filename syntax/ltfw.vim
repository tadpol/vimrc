" Vim syntax file for ltfw test syntax file
" Language: ltfw
" Maintainer: Michael Conrad Tilstra <conrad@sistina.com>
" Last Change: Wed Nov 28 16:49:19 CST 2001

if exists("b:current_syntax")
  finish
endif

syntax keyword ltfwwords locker lockee testset sequence start
syntax keyword ltfwwords open plock flock type after timeout
syntax keyword ltfwwords close stop kill barrier respawn
syntax keyword ltfwwords name host stomith path begin end result

syntax keyword ltfwConst exl exl_nb shl shl_nb unl 
syntax match ltfwNum +[0-9]\++

syntax region ltfwstring oneline start=+"+ skip=+\\\\\|\\"+ end=+"+

syntax keyword ltfwTODO contained	TODO FIXME XXX
syntax region ltfwComment start=+/\*+ end=+\*/+ contains=ltfwTODO


if !exists("did_ltfw_syntax_inits")
	let did_ltfw_syntax_inits = 1
	hi link ltfwwords Statement
	hi link ltfwConst Constant
	hi link ltfwstring String
	hi link ltfwComment Comment
	hi link ltfwTODO Todo
	hi link ltfwNum Number
endif

let b:current_syntax = "ltfw"
