" quickrun
nnoremap <silent> <SPACE>ll <Cmd>QuickRun<CR><C-w>w

" StartupTime
nnoremap <leader>vt <cmd>StartupTime --tries 1<cr>

" == markdown-preview ==
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 0
let g:mkdp_filetypes = [ 'markdown' ]
autocmd! FileType markdown nnoremap <space>fmm :MarkdownPreviewToggle<CR>

"exec "nohlsearch"

command! -nargs=?  -complete=color Theme colorscheme <args>


" add toggle for it, temp method is u to undo it
"autocmd! BufNewFile,BufRead *.norg nnoremap <space>nn I+<esc>A+<esc>
" TODO: have bug how to exclude for other filetypes"
"au<c-g>u<Esc>[s1z=`]a<c-g>u
"<c-g>u<Esc>[s1z=`]a<c-g>u
" TODO:
"autocmd! FileType norg nnoremap <space>nn <c-g>mzI+<esc>A+<esc>`z<c-g>

"let g:vim_markdown_folding_disabled=1
"let g:vim_markdown_conceal=0
let g:vim_markdown_frontmatter = 1
"let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_list_item_indent = 0
let g:vim_markdown_toc_autofit = 1
" don't enable this markdown_math
"let g:vim_markdown_math = 1
let g:vim_markdown_emphasis_multiline = 0
let g:vim_markdown_conceal_code_blocks = 1
"" enable delete line
let g:vim_markdown_strikethrough = 1

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_edit_url_in = 'tab'
