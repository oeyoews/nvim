local _, nvim_treesitter_configs = pcall(require, "nvim-treesitter.configs")

-- @Mirror_nvim_treesitter
--[[ require("nvim-treesitter.install").prefer_git = true
local parsers = require("nvim-treesitter.parsers").get_parser_configs()
for _, config in pairs(parsers) do
  local mirror = config.install_info.url
  mirror = mirror:gsub(
    "https://github.com/",
    "https://hub.fastgit.xyz/"
  )
end ]]
-- ensure_installed = ensure_installed.parsers
local disable_filetypes = {
  -- "python", "yml",
  -- "tex",
  -- "js",
}
local rainbow_colors = {
  "#F7768E",
  "#8169B4",
  "#689d6a",
  "#d79921",
  "#a89984",
  "#d65d0e",
  "#458588",
}
local terminal_colors = {
  "Red",
  "Green",
  "Yellow",
  "Blue",
  "Magenta",
  "Cyan",
  "White",
}

-- note: if update query, have some error, please remove old different dir for parsers, such as vim
local parser_install_dir = string.format("%s/parsers/", vim.fn.stdpath("data"))

-- tips: tsmoduleinfo
nvim_treesitter_configs.setup({
  -- parser_install_dir = parser_install_dir,
  indent = {
    enable = true,
    disable = disable_filetypes,
  },
  autotag = {
    enable = true,
  },
  -- install some different parsers automatically
  sync_install = false,
  -- use auto_install to replace ensure_installed
  auto_install = true,
  -- ensure_installed = oeyoews.parsers,

  highlight = {
    enable = true,
    -- parser name
    disable = {
      "latex",
      -- "javascript",
    },
    -- additional_vim_regex_highlighting = false,
    additional_vim_regex_highlighting = {
      "org",
    },
  },
})

vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = vim.fn["nvim_treesitter#foldexpr"]()
vim.cmd([[ set foldexpr=nvim_treesitter#foldexpr() ]])
vim.opt.runtimepath:append(parser_install_dir)
