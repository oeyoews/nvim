-- NOTE: this null_ls can't return, unless really uninstall it
local ok, null_ls = pcall(require, "null-ls")

if not ok then
  vim.notify("null-ls not founded")
  return
end

local diagnostics = null_ls.builtins.diagnostics

local formatting = null_ls.builtins.formatting

local disabled_filetypes = {
  "c",
  "json",
}

local enabale_filetypes = require("plugins.lsp.filetypes").filetypes

local sources = {
  -- builtin.formatting.prettierd.with,
  -- builtin.diagnostics.misspell,
  -- builtin.diagnostics.gitlint, -- need install gitlint
  -- builtin.completion.spell,
  -- builtin.code_actions.shellcheck
  diagnostics.markdownlint, -- need install markdownlint
  diagnostics.codespell.with({
    disabled_filetypes = disabled_filetypes,
    filetypes = enabale_filetypes,
  }), -- need install codespell
}

null_ls.setup({
  update_in_insert = false,
  debounce = 500,
  sources = sources,
})
