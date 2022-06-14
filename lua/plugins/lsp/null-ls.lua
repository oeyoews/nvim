-- NOTE: this null_ls can't return, unless really uninstall it
local ok, null_ls = pcall(require, 'null-ls')

if not ok then
  vim.notify('null-ls not founded')
  return false
end

local diagnostics = null_ls.builtins.diagnostics

local formatting = null_ls.builtins.formatting

local sources = {
  diagnostics.markdownlint, -- need install markdownlint
  -- builtin.formatting.prettierd.with,
  -- builtin.diagnostics.misspell,
  -- builtin.diagnostics.gitlint, -- need install gitlint
  -- builtin.completion.spell,
  -- builtin.code_actions.shellcheck
  diagnostics.codespell.with({
    disabled_filetypes = { 'c' },
    filetypes = {
      -- NOTE: not mix two styles
      -- c = false,
      'markdown',
      'lua',
      'python',
      'vim',
      'gitcommit',
    },
  }), -- need install codespell
}

null_ls.setup({
  update_in_insert = false,
  debounce = 500,
  sources = sources,
})
