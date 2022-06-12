---[[
local status_ok, tokyonight = pcall(require, 'tokyonight')

if not status_ok then
	vim.notify('Theme not found')
	return false
end

package.loaded['tokyonight.config'] = nil
tokyonight.colorscheme()

vim.cmd([[
hi NormalFloat  ctermbg=NONE guibg=NONE

hi Visual         ctermbg=242 gui=reverse

" float menu
hi Pmenu        ctermfg=0 ctermbg=13 guifg=#a9b1d6 guibg=#3b4261
hi PmenuSbar    ctermbg=248 guibg=#2A2E3F
hi PmenuSel     ctermfg=242 ctermbg=0 guifg=#282c34 guibg=#73b8f1
" sidebar second
hi PmenuThumb ctermfg=160 ctermbg=97 guifg=#282c34 guibg=#73b8f1

" #FFCC00
hi Cursor guifg=#51afef guibg=#51afef
hi Cursor2 guifg=red guibg=red
hi IncSearch  cterm=bold ctermfg=16 ctermbg=167 guifg=#292b2e guibg=#ce537a
hi Search     ctermfg=16 ctermbg=76 guifg=#292b2e guibg=#86dc2f
hi Keyword    cterm=bold ctermfg=68 guifg=#8167a3 gui=bold
hi CursorLineNr      guifg=#51afef guibg=#000000
hi SpellBad   ctermbg=9 gui=underline guifg=#f7768e
hi VertSplit guibg=yellow

" set cursor color
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50

" yank highlight
autocmd TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch",
      \ timeout=150, on_visual=true}

" restore the cursor location
autocmd! BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

]])

--]]
