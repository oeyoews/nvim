vim.cmd([[

" hi NormalFloat  ctermbg=NONE guibg=NONE
" #FFCC00
" "#86dc2f
" hi PmenuThumb ctermfg=160 ctermbg=97 guifg=#282c34 guibg=#73b8f1
" hi VertSplit guibg=none guifg=#353b45 gui=bold cterm=reverse

 hi  Normal guifg=#A2ACCD
" hi Visual         ctermbg=242 gui=reverse
" hi Pmenu        ctermfg=0 ctermbg=13 guifg=#a9b1d6 guibg=#3b4261
" hi PmenuSbar    ctermbg=248 guibg=#2A2E3F
" hi PmenuSel     ctermfg=242 ctermbg=0 guifg=#282c34 guibg=#73b8f1
hi IncSearch  cterm=bold ctermfg=16 ctermbg=167 guifg=#292b2e guibg=#ce537a
" hi Search     ctermfg=16 ctermbg=76 guifg=#292b2e guibg=#7CB740
hi CursorLineNr      gui=none guibg=none
hi Keyword   guifg=#9D7CD8 gui=bold
hi VertSplit guifg=#BB9AF7
hi MatchParen  gui=underline
hi MatchWord cterm=underline gui=underline

" set cursor color in gnome-terminal return normal is still insert color red
hi Cursorn guifg=none guibg=none  " to fit gnome-terminal serial cursor
hi Cursori guifg=red guibg=red
set guicursor=n-v-c:block-Cursorn/lCursorn,i-ci-ve:ver25-Cursori/lCursori,r-cr:hor20,o:hor50

" restore the cursor location
autocmd! BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]])

-- highlight yank
-- yank highlight  is conflict to venn.nvim
vim.cmd([[
hi Yank  cterm=bold ctermfg=16 ctermbg=167 guifg=#292b2e guibg=#ce537a gui=underline
]])
oeyoews.autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({
      higroup = "Yank",
      timeout = 400,
      on_visual = true,
    })
  end,
})

-- or use tokyonight theme color
-- vim.cmd([[highlight default GH guifg=#3bb6c4 guibg=NONE]])
-- TODO: learn use highlight group and cutsom_ui file
-- https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance
vim.cmd([[
highlight CmpItemKindDefault  guifg=#3bb6c4 guibg=NONE
highlight CmpItemKindSnippet  guifg=#3bb6c4 guibg=NONE
highlight CmpItemMenu guifg=#9E79BE guibg=NONE
]])
