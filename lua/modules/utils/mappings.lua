vim.g.mapleader = " "

local keymappings_set = {}

--  @not use this silent = true
vim.keymap.set({ "n", "v" }, "<space><space>", ":", { desc = " cmd mode" })
keymappings_set = {
  {
    "<space>fd",
    ":e /tmp/`date -I`.md<cr>",
    " edit markdown",
  },
  { "<space>yp", ":<C-U>let @+=expand('%:p')<cr>", " copy file path" },
  { "<space>pp", '"*p', " past to neovim" },
  { "<space>yy", '"*Y', " past to system" },
  { "<space>yy", '"+y', " past to system", "v" },
  { "<esc>", ":noh<cr><C-L><esc>", " clear highlight and screen" },
  { "<space>fu", ":FZF<cr>", "fzf" },
  { "<space>bb", ":e `mktemp -t nvim.scr.XXX`<cr>", " edit temp file" },
  { "<space>ba", ":%bw<cr>", " remove all buffers" },
  { "<space>bs", ":e /tmp/scratch.txt<cr>", " edit scratch.txt" },
  { "H", "0", " jump head of line", { "n", "v" } },
  { "L", "$", "  jump end of line", { "n", "v" } },
  { "q", "", "disable macro in normal mode", { "n", "v" } },
  { "jk", "<esc>", "escape insert mode", "i" },
  { ">>", ">gv", "right indent", "v" },
  { "<<", "<gv", "left indent", "v" },
  { "U", "<C-r>", "undo change" },
  { "<space>bd", "<cmd>bdelete<cr>", " delete current buffer" },
  { "<space>qq", "<cmd>q<cr>", "quit neovim" },
  { "<space><tab>", "<cmd>bp<cr>", " goto previout buffer" },
  { "<space>bn", "<cmd>bn<cr>", " goto next buffer" },
  { "<space>bx", "<cmd>ene<cr>", "🪐 new buffer" },
  { "<leader>w", "<C-W>", "map window prefix" },
  { "<leader>fs", ":w<cr>", " save file" },
  { "<leader>bM", ":messages<cr>", " messages" },
  { "<leader>tn", ":setlocal invnumber<cr>", "  toggle show number" },
  { "<leader>ss", ":setlocal invspell<cr>", "𝒮 toggle spell" },
  { "<leader>tl", ":setlocal invlist<cr>", "  toggle list" },
}

-- core mapping
oeyoews.kmap(keymappings_set)

-- autocmd todo
vim.cmd([[
command! -nargs=1 Out ene|pu=execute('<args>')
command! Scripts split | ene|pu=execute('scriptnames')
command! -nargs=1 -complete=highlight HI ene|pu=execute('hi <args>')
command! -nargs=1  Put ene|pu=execute('<args>')
command! -nargs=?  -complete=color Themes colorscheme <args>

augroup quickquit
autocmd!
autocmd FileType notify,null-ls-info,lspinfo,startuptime,help,qf,quickrun,snippets,tsplayground nnoremap <buffer> <silent> q :q<cr>
autocmd FileType startuptime,help setlocal nocursorline nonumber norelativenumber
augroup END

augroup cursorline_goggle
au!
autocmd InsertEnter * setlocal nocursorline " | setlocal rnu
autocmd InsertLeave * setlocal cursorline " | setlocal nornu have bug for telescope prompt
augroup END
]])

-- functions
vim.cmd([[
function! Terminal() abort
" TODO: have conflict for ranger(TermOpen)
au! TermOpen * call feedkeys("i")
autocmd! TermClose * call feedkeys("\<esc>")
split | terminal
setlocal nornu nonu
setlocal nocursorline
endfunction

function! Sline() abort
if &laststatus
set laststatus=0
else
set laststatus=3
endif
endfunction
]])

vim.keymap.set("n", "<space>tS", function()
  vim.fn["Sline"]()
end, { desc = " toggle statusline" })

vim.keymap.set("n", "<space>tk", function()
  vim.fn["Terminal"]()
end, { desc = "  terminal" })

vim.keymap.set(
  "n",
  "<space>fi",
  "<cmd>find ~/.config/nvim/init.lua<cr>",
  { desc = "ﳐ edit init.lua(main) neovim config" }
)
vim.keymap.set("n", "<space>hd", function()
  print(os.date("%Y-%m-%d %H:%M:%S %A %j days "))
end, { desc = "愈show time" })
vim.keymap.set("n", "<space>helo", function()
  vim.notify("  Hello, Neovim", "info", { title = "welcome" })
end, { desc = " hello, neovim" })
vim.keymap.set("n", "<space>hv", function()
  return vim.notify(vim.inspect(vim.version()), "info", { title = "nvim version" })
end, { desc = "𝑽 show nvim version" })

function GetFiles()
  local files = {}
  -- local tmpfile = os.tmpname() -- "/tmp/xyzexxx.txt"
  local tmpfile = "/tmp/nvim_tag.txt" -- "/tmp/xyzexxx.txt"
  os.execute("cd ~/.config/nvim/ && git describe --tags `git rev-list --tags --max-count=1`" .. " > " .. tmpfile)
  local f = io.open(tmpfile)
  if not f then
    return files
  end
  local k = 1
  for line in f:lines() do
    files[k] = line
    k = k + 1
  end
  f:close()
  return files
end

vim.keymap.set("n", "<space>ht", function()
  vim.notify(" " .. GetFiles()[1], "info", { title = "nvim custom version" })
end, { desc = " show git latest tag" })

vim.keymap.set("n", "<space>so", "<cmd>so %<cr>", { desc = " refresh current file" })
