vim.g.mapleader = " "

local keymappings_set = {}

--  not use this silent = true
vim.keymap.set({ "n", "v" }, "<space><space>", ":", { desc = "cmd mode" })

keymappings_set = {
  { "<space>fu", ":FZF<cr>", "fzf" },
  { "<space>bb", ":e `mktemp -t neovim-scratch-XXXXXX`<cr>", "edit temp file" },
  { "<space>ba", ":%bw<cr>", "removw all buffers" },
  { "<space>bs", ":e /tmp/scratch.txt<cr>", "edit scratch.txt" },
  {
    "<space>helo",
    function()
      vim.notify("  Hello, Neovim", "info", { title = "welcome" })
    end,
    { desc = "hello, neovim" },
  },
  { "H", "0", "jump head of line", { "n", "v" } },
  { "L", "$", "jump end of line", { "n", "v" } },
  { "q", "", "disable macro in normal mode", { "n", "v" } },
  { "jk", "<esc>", "escape insert mode", "i" },
  { ">>", ">gv", "right indent", "v" },
  { "<<", "<gv", "left indent", "v" },
  { "U", "<C-r>", "undo change" },
  { "<space>bd", "<cmd>bdelete<cr>", "delete current buffer" },
  { "<space>qq", "<cmd>q<cr>", "quit neovim" },
  { "<space><tab>", "<cmd>bp<cr>", "previout buffer" },
  { "<space>bn", "<cmd>bn<cr>", "next buffer" },
  { "<space>bx", "<cmd>ene<cr>", "new buffer" },
  { "<leader>w", "<C-W>", "map window prefix" },
  { "<leader>fs", ":w<cr>", "save file" },
  { "<leader>bM", ":messages<cr>", "messages" },
  { "<leader>tn", ":setlocal invnumber<cr>", "toggle show number" },
  { "<leader>ss", ":setlocal invspell<cr>", "toggle spell" },
  { "<leader>tl", ":setlocal invlist<cr>", "toggle list" },
}

oeyoews.kmap(keymappings_set)

vim.cmd([[
"let g:mapleader = " "
" let g:mapleader = "\<Space>"

" create blankline nto formatoptions
"nnoremap <silent> <leader>o :set paste<cr>o<esc>:set nopaste<cr>
"nnoremap <silent> <leader>O :set paste<cr>O<esc>:set nopaste<cr>

" load current config file
" nnoremap <leader>so <cmd>so % <bar> lua vim.notify("Finished refresh current file.")<cr>
" nnoremap <silent> <leader>so <cmd>luafile %<cr> :lua vim.notify("Finished refresh current file.")<cr>

" quit window
" nnoremap <silent> <space>qy :set confirm q<CR>
"  nnoremap <silent> <space>qe :e!<cr>

" clear or highlight search words
"nnoremap <silent> <SPACE>sc <cmd>nohlsearch<cr>
"nnoremap <silent> <esc> :set invhlsearch<return><C-L><esc>
" in neovim 0.6, you can use Ctrl + l to clear it
" @deprecated
"nnoremap <space>bc <cmd>set invhlsearch<cr>
nnoremap <silent> <esc> :noh<return><C-L><esc>

" is same to neorg start, but is no effect
" nnoremap <silent> <leader>tn <cmd>setlocal invnumber<cr>

"autocmd FileType norg
"vnoremap <space>nn mzI+<esc>A+<esc>`z

" copy and yank with system
" selsct some text, copy it ro system clipboard
vnoremap <space>yy "+y
" in normal mode, like Y to copy current line,
" but copy it to system clipboard
"
" == yank
"nnoremap <space>yy "*Y <cmd> echom "Finish to copy your system clipboard"<cr>
nnoremap <space>yy "*Y

" copy
"noremap <space>P "*P
noremap <space>pp "*p

"nnoremap <silent> <space>yp :<C-U>let @+=expand('%:p') <bar> echom "Finished copy fpath."<cr>
nnoremap <silent> <space>yp :<C-U>let @+=expand('%:p') <bar> lua vim.notify(" 🦜 Copy Fpath")<cr>
]])

-- load custom_map
require("user.keybindings").custom_map()
