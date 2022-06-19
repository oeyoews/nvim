local g = vim.g
local opt = vim.opt

g.did_load_filetypes = 0
g.do_filetype_lua = 1
g.python3_host_prog = "/usr/bin/python3"

-- opt.clipboard = "unnamedplus"
-- set shadafile(neovim) path
vim.schedule(function()
  vim.opt.shadafile = vim.fn.expand("$HOME") .. "/.local/share/nvim/shada/main.shada"
  vim.cmd([[ silent! rsh ]])
end)

local default_options = {
  number = true,
  textwidth = 80,
  laststatus = 3,
  updatetime = 200,
  timeoutlen = 1000,
  splitright = true,
  splitbelow = true,
  expandtab = true,
  smartcase = false,
  smartindent = true,
  ignorecase = true,
  shiftwidth = 2,
  tabstop = 2,
  softtabstop = 2,
  mouse = "a",
  cursorline = true,
  lazyredraw = true,
  termguicolors = true,
  undofile = true,
  ttyfast = true,
  list = true,
  linebreak = true,
  hidden = true,
  confirm = true,
  showcmd = false,
  showmode = false,
  backup = false,
  swapfile = false,
  foldenable = false,
  incsearch = true,
  hlsearch = true,
  vb = true,
  autochdir = true,
  wrap = true,
  numberwidth = 4,
  ruler = false,
  signcolumn = "yes", -- silent side number shake
  pumheight = 8, -- show complete menu numbers
  title = false,
  titlestring = "%<%F%=%l/%L - nvim",
  shell = "/bin/zsh",
  -- https://github.com/LunarVim/LunarVim/issues/2294#issuecomment-1045810429
  -- eob to hide tilder
  fillchars = {
    eob = " ", -- suppress ~ at EndOfBuffer
    -- vert = "⣿", -- alternatives │▕
    -- fold = " ",
    -- diff = "╱", -- alternatives = ⣿ ░ ─
    -- msgsep = " ",
    -- foldopen = "▾",
    -- foldsep = "│",
    -- foldclose = "▸",
  },
  spelllang = { "en", "cjk" },
  listchars = { tab = "  " },
}

-- can't put pairs options
opt.shortmess:append("acsI")
opt.whichwrap:append("<,>,[,],h,l") -- wrap in line end

for k, v in pairs(default_options) do
  vim.opt[k] = v
end
