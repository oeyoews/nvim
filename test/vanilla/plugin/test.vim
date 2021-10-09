" prevent loading file twice
if exists('g:test_vanilla') | finish | endif 
let s:save_cpo = &cpo
set cpo&vim

command! Date call test#date()

let &cpo = s:save_cpo
unlet s:save_cpo
let g:test_vanilla = 1
