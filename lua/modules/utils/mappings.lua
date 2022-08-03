-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   mappings.lua                                                             --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:42 by oeyoews                                  --
--   Updated: 2022/08/03 11:08:54 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

vim.g.mapleader = " "

-- TODO have autocmd and use mapping set it
local keymappings_set = {}

--  @not use this silent = true
vim.keymap.set({ "n", "v" }, "<space><space>", ":", {
  desc = " cmd mode",
})
keymappings_set = {
  -- lua
  {
    "<space>el",
    "<cmd>Edit lua<cr>",
    " edit lua",
  },
  -- md
  {
    "<space>ed",
    "<cmd>Edit md<cr>",
    " edit markdown",
  },
  -- norg
  {
    "<space>en",
    function()
      return oeyoews.creat_journey("norg")
    end,
    " edit norg",
  },
  {
    "<space>yp",
    ":<C-U>let @+=expand('%:p')<cr>",
    " copy file path",
  },
  {
    "<space>pp",
    '"*p',
    " past to neovim",
  },
  {
    "<space>yy",
    '"*Y',
    " past to system",
  },
  {
    "<space>yy",
    '"+y',
    " past to system",
    "v",
  },
  {
    "<esc>",
    ":noh<cr><C-L><esc>",
    " clear highlight and screen",
  },
  {
    "<space>bb",
    -- vne
    -- ":e `mktemp -t nvim.scr.XXX`<cr>",
    function()
      local tmp = os.tmpname()
      vim.cmd(([[find %s]]):format(tmp))
    end,
    " edit temp file",
  },
  {
    "<space>ba",
    ":%bw<cr>",
    " remove all buffers",
  },
  {
    "H",
    "0",
    " jump head of line",
    { "n", "v" },
  },
  {
    "L",
    "$",
    "  jump end of line",
    { "n", "v" },
  },
  {
    "q",
    "",
    "disable macro in normal mode",
    { "n", "v" },
  },
  {
    "jk",
    "<esc>",
    "escape insert mode",
    "i",
  },
  {
    ">>",
    ">gv",
    "right indent",
    "v",
  },
  {
    "<<",
    "<gv",
    "left indent",
    "v",
  },
  {
    "U",
    "<C-r>",
    "undo change",
  },
  {
    "<space>bd",
    "<cmd>bdelete<cr>",
    " delete current buffer",
  },
  {
    "<space>qq",
    "<cmd>q<cr>",
    "quit neovim",
  },
  {
    "<space><tab>",
    "<cmd>bp<cr>",
    " goto previout buffer",
  },
  {
    "<space>bn",
    "<cmd>bn<cr>",
    " goto next buffer",
  },
  {
    "<space>fn",
    "<cmd>ene<cr>",
    "🪐 new buffer",
  },
  {
    "<leader>w",
    "<C-W>",
    "map window prefix",
  },
  {
    "<leader>fs",
    ":w<cr>",
    " save file",
  },
  {
    "<leader>mm",
    ":messages<cr>",
    " messages",
  },
  {
    "<leader>tn",
    ":setlocal invnumber<cr>",
    "  toggle show number",
  },
  {
    "<leader>ss",
    ":setlocal invspell<cr>",
    "𝒮 toggle spell",
  },
  {
    "<leader>tl",
    ":setlocal invlist<cr>",
    "  toggle list",
  },
}

-- core mapping
oeyoews.kmap(keymappings_set)

vim.cmd([[
command! Scripts split | ene|pu=execute('scriptnames')
command! -nargs=1 -complete=highlight HI ene|pu=execute('hi <args>')
command! -nargs=1  Put ene|pu=execute('<args>')
]])

-- functions
vim.cmd([[
function! Sline() abort
if &laststatus
set laststatus=0
set showtabline=0
set invnumber
let &number=0
silent! Gitsigns toggle_signs
else
set laststatus=3
set showtabline=2
let &number=1
silent! Gitsigns toggle_signs
endif
endfunction
]])

--   mappings
vim.keymap.set("n", "<space>tz", function()
  -- like callback
  return vim.fn["Sline"]()
end, {
  desc = " toggle statusline",
})

vim.keymap.set("n", "<space>tk", function()
  vim.cmd([[split | terminal]])
end, {
  desc = "  terminal",
})

vim.keymap.set("n", "<space>fi", function()
  return oeyoews.find_lua_file("init")
end, {
  silent = true,
  desc = "ﳐ edit init.lua(main) neovim config",
})

vim.keymap.set("n", "<space>hd", function()
  return vim.notify(os.date("%Y-%m-%d %H:%M:%S %A, Day %j"), "info", {
    title = "Current Date",
    timeout = 3000,
  })
end, {
  desc = "愈show time",
})
vim.keymap.set("n", "<space>helo", function()
  return vim.notify("  Hello, Neovim", "info", {
    title = "welcome",
  })
end, {
  desc = " hello, neovim",
})

vim.keymap.set("n", "<space>so", "<cmd>so %<cr>", {
  desc = " refresh current file",
})

vim.keymap.set("n", "<space>fk", function()
  return oeyoews.find_lua_file("lua/modules/utils/mappings")
end, {
  silent = true,
  desc = " edit mappings file",
})

-- show neovim info
local fun = require("user.fun")
vim.keymap.set("n", "<space>hi", function()
  return fun.get_neovim_info()
end, {
  silent = true,
  desc = " show neovim info",
})

vim.keymap.set("n", "<space>vf", "<cmd>set invfoldenable<cr>", {
  silent = true,
  desc = " toggle fold",
})

-- or append <cmd>q!<cr>
vim.keymap.set("t", "<M-q>", "<C-\\><C-n>", {
  silent = true,
  desc = " quit terminal mode",
})
