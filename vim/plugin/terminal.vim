" have some bug , if source it twice in xx.vim and xx.lua(because of vim.cmd)
" it's confict for ranger, maybe it's it terminal job
au! TermOpen * call feedkeys("i")
au! TermClose * call feedkeys("\<esc>")
