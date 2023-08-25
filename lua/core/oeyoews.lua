-- global lua variables
oeyoews = {}

oeyoews.home = os.getenv('HOME')
oeyoews.username = os.getenv('USER')

-- extra binary
oeyoews.mason = {}

oeyoews.completion = {}

oeyoews.lazyload = require('user.lazyload')

-- api
oeyoews.autocmd = vim.api.nvim_create_autocmd
oeyoews.userautocmd = vim.api.nvim_create_user_autocmd
oeyoews.mygroup = vim.api.nvim_create_augroup('OeyoewGroup', {})
-- nvim_version
oeyoews.nvim_version = vim.version().minor
oeyoews.nvim_full_version_info =
  string.format('%s.%s.%s', vim.version().major, vim.version().minor, vim.version().patch)

-- options
oeyoews.options = {
  enable_session = true,
  enable_startuptime = true,
  enable_zen_mode = true,
  enable_clangd = true,
  -- @see lspconfig.lua
  enable_lsp = true,
  -- @see lspconfig.lua
  sumneko_lua_locale_cn = false,
  -- @see sta.lua
  toggle_theme_auto = true,
  -- @ref: user.pcall.lua
  -- TODO: use keybinds to toggle this options in config
  -- @see modules.utils.bootstrap.lua
  -- @options: rolling.json, default.json, v1.0.0.json
  -- bug: always appear this tip
  -- snapshot = "20220824.json5",
}

oeyoews.servers = {
  'lua_ls',
  'tsserver',
  'eslint', -- not suit mjs zx
  'jsonls',
  'tailwindcss',
  -- "marksman",
  -- 'clangd',
  -- "volar",
  -- "cmake",
  -- 'pylsp',
  -- 'gopls',
  -- "vimls",
  -- "bashls",
  -- "yamlls",
  -- "texlab",
}

--[=[
for index, value in ipairs(list) do
  {
  oeyoews.builtin .. value
  }
end
--]=]
-- must global function
oeyoews.completion.edit = function()
  local ft = {
    'norg',
    'tid',
    'lua',
    'md',
    'txt',
    'tex',
  }
  table.sort(ft)
  return table.concat(ft, '\n')
end

-- load global variables
require('core.functions')
require('core.pluginlist')

--   mappings
--[=[ vim.keymap.set("n", "<space>fo", function()
  return oeyoews.find_lua_file("lua/core/oeyoews")
end, {
  desc = " edit global config",
}) --]=]
