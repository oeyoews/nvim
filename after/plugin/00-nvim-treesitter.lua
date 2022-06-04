local nvim_treesitter_ok, tree_configs = pcall(require, "nvim-treesitter.configs")

if not nvim_treesitter_ok then
  return false
end

tree_configs.setup {
  refactor = {
    -- highlight scope code
    highlight_current_scope = { enable = false },
    -- highlight define and refrence
    highlight_definitions = { enable = true },
  },

  indent = {
    enable = false
  },
  -- install some different parsers automatically

  ---[[
  ensure_installed = {
    "json",
    "lua",
    "vim",
    "yaml",
    --"c",
    --"python",
    --"java",
    --"html",
    --"css",
    --"bash",
    --"toml",
    --"vue",
    --"query",
    --"javascript",
    --"typescript",
    --"org",
    -- todo details
    --"norg", "norg_meta", "norg_table",
    --"comment",
    --"go",
    --"gomod",
    --"markdown",
  },
  --]]

  highlight = { enable = true,
    disable = { 'org' },
    additional_vim_regex_highlighting = { 'org' },
  },

  --rainbow = {
  --enable = true,
  --extended_mode = true,
  --max_file_lines = nil,
  --},

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

  --playground = {
  --enable = true,
  --disable = {},
  --updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
  --persist_queries = false, -- Whether the query persists across vim sessions
  --keybindings = {
  --toggle_query_editor = 'o',
  --toggle_hl_groups = 'i',
  --toggle_injected_languages = 't',
  --toggle_anonymous_nodes = 'a',
  --toggle_language_display = 'I',
  --focus_language = 'f',
  --unfocus_language = 'F',
  --update = 'R',
  --goto_node = '<cr>',
  --show_help = '?',
  --},
  --},

  --query_linter = {
  --enable = true,
  --use_virtual_text = true,
  --lint_events = {"BufWrite", "CursorHold"},
  --},
}
