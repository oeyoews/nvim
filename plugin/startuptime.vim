" BUG: break session restore
" nnoremap <leader>vt <cmd>StartupTime --tries 5<cr>

" don't use autocmd! , or use autogroup
augroup startuptime_setting
  au!
  autocmd FileType startuptime setlocal nonumber nocursorline
augroup END

