local status_ok, tokyonight = pcall(require, "tokyonight")

if not status_ok then
  vim.notify("THeme not found")
  return false
end

tokyonight.colorscheme()

vim.cmd [[
" NOTE: comment this to use material's cursor style
" #FFCC00
hi Cursor guifg=#51afef guibg=#51afef
"hi Cursor  guibg=#FFCC00
hi Cursor2 guifg=red guibg=red
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50

" restore the cursor location
autocmd! BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

hi IncSearch  cterm=bold ctermfg=16 ctermbg=167 guifg=#292b2e guibg=#ce537a
hi Search     ctermfg=16 ctermbg=76 guifg=#292b2e guibg=#86dc2f
hi Keyword    cterm=bold ctermfg=68 guifg=#8167a3 gui=bold
hi CursorLineNr      guifg=#51afef guibg=#000000
hi SpellBad   ctermbg=9 gui=underline guifg=#f7768e
" hi VertSplit guibg=#51afef

autocmd TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch",
      \ timeout=150, on_visual=true}
]]
