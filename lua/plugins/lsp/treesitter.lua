local nvim_treesitter_ok, tree_configs = pcall(require, "nvim-treesitter.configs")

if not nvim_treesitter_ok then
  vim.notify("nvim_treesitter not founded")
  return
end

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

-- @files: plugins/lsp/filetypes.lua
local ensure_installed = require("plugins.lsp.filetypes").filetypes

local disable_filetypes = {
  -- "python",
  -- "yml",
}

local rainbow_colors = {
  "#a89984", --grey
  -- "#cc241d", --red
  "#8169B4",
  "#b16286", --Magenta
  "#d79921", --yellow
  "#689d6a", --green
  "#d65d0e", --orange
  "#458588", --cyan
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

-- tips: tsmoduleinfo
tree_configs.setup({
  textobjects = {
    select = {
      enable = false,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },
  autotag = {
    enable = true,
  },

  indent = {
    enable = true,
    disable = disable_filetypes,
  },
  -- install some different parsers automatically

  sync_install = false,
  ---[[
  ensure_installed = ensure_installed,
  --]]

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  -- nvim-ts-rainbow
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = 1000,
    colors = rainbow_colors,
    termcolors = terminal_colors,
  },

  -- plugin: nvim-treesitter-refactor
  refactor = {
    highlight_definitions = {
      enable = true,
      -- Set to false if you have an `updatetime` of ~100.
      clear_on_cursor_move = true,
    },
  },
})
