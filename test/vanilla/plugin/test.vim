" prevent loading file twice
if exists('g:test_vanilla') | finish | endif 
let s:save_cpo = &cpo
set cpo&vim

command! Echo call test#echo()
command! Date call test#date()
command! Hi   call test#name('neovim')

let &cpo = s:save_cpo
unlet s:save_cpo
let g:test_vanilla = 1
