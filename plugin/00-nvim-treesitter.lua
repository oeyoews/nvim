local nvim_treesitter_ok, tree_configs = pcall(require, "nvim-treesitter.configs")

if not nvim_treesitter_ok then
  vim.notify("nvim_treesitter not founded")
  return
end

--[[
-- mirror in China TODO: verify  it
for _, config in pairs(require("nvim-treesitter.parsers").get_parser_configs()) do
  config.install_info.url = config.install_info.url:gsub("https://github.com/", "https://hub.fastgit.xyz/")
end
--]]

tree_configs.setup {
  autotag = {
    enable = true,
  },
  refactor = {
    -- highlight scope code
    highlight_current_scope = { enable = false },
    -- highlight define and refrence
    highlight_definitions = {
      enable = true,
      clear_on_cursor_move = true
    },
  },

  indent = {
    enable = true,
    disable = { "python", "yaml" },
  },
  -- install some different parsers automatically

  sync_install = false,
  ---[[
  ensure_installed = {
    "make",
    "json",
    "lua",
    "vim",
    "yaml",
    "c",
    "markdown",
    "python",
    "html",
    "css",
    "bash",
    "go",
    "gomod",
    "toml",
    "javascript",
    -- "query",
    --"java",
    --"vue",
    --"typescript",
    --"org",
    -- todo details
    --"norg", "norg_meta", "norg_table",
    --"comment",
    --"gomod",
  },
  --]]

  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },

  -- nvim-ts-rainbow
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = 1000,
    colors = {
      "#a89984", --grey
      -- "#cc241d", --red
      "#8169B4",
      "#b16286", --Magenta
      "#d79921", --yellow
      "#689d6a", --green
      "#d65d0e", --orange
      "#458588", --cyan
    },
    termcolors = {
      "Red",
      "Green",
      "Yellow",
      "Blue",
      "Magenta",
      "Cyan",
      "White",
    },
  },

  -- 增量选择 ??
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = { "BufWrite", "CursorHold" },
  },
}
