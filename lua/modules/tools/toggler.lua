-- init.lua
require("nvim-toggler").setup({
  -- your own inverses
  inverses = {
    ["xelatex"] = "lualatex",
    ["vim"] = "emacs",
    ["main"] = "master",
    ["enable"] = "disable",
    ["optional"] = "required",
  },
  -- removes the default <leader>i keymap
  remove_default_keybinds = true,
})

-- init.lua
vim.keymap.set(
  {
    "n",
    "v",
  },
  "<space>cl",
  require("nvim-toggler").toggle,
  {
    silent = true,
    desc = "toggle word",
  }
)
