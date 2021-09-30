if !exists('g:loaded_completion') | finish | endif

lua <<EOF

-- lang#c: yay clang
require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach }

-- lang#vim: npm install -g vim-language-server
require'lspconfig'.vimls.setup{ on_attach=require'completion'.on_attach }

-- lang#python: yay pyright
require'lspconfig'.pyright.setup{ on_attach=require'completion'.on_attach }

-- lang#lua lua-dev
require'lspconfig'.sumneko_lua.setup{ on_attach=require'completion'.on_attach }

-- lang#sh npm bash-languag-server
require'lspconfig'.bashls.setup{ on_attach=require'completion'.on_attach }

EOF

" auto popup
let g:completion_enable_auto_popup = 1
" auto tip for popup
let g:completion_enable_auto_hover = 1
" use ultisnips
let g:completion_enable_snippet = 'UltiSnips'
" enter is completion
let g:completion_confirm_key = "\<CR>"
" smart case
let g:completion_matching_smart_case = 1
" trigger character
let g:completion_trigger_character = ['.', '::']
" fuzzy, all
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_enable_auto_signature = 1
let g:completion_trigger_keyword_length = 2
let g:completion_timer_cycle = 100
let g:completion_chain_complete_list = {
      \ 'default' : {
        \   'default': [
          \       {'complete_items': ['lsp', 'snippet', 'buffers']},
          \       {'mode': '<c-p>'},
          \       {'mode': '<c-n>'}],
          \   'comment': []
          \ }
          \}

" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()

" mappings
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)

autocmd BufEnter * lua require'completion'.on_attach()
