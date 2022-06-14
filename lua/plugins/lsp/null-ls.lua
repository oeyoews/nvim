local ok, null_ls = pcall(require, 'null-ls')

local builtin = null_ls.builtins

local sources = {
  builtin.diagnostics.markdownlint, -- need install markdownlint
  -- builtin.formatting.prettierd.with,
  -- builtin.diagnostics.misspell,
  -- builtin.diagnostics.gitlint, -- need install gitlint
  -- builtin.completion.spell,
  -- builtin.code_actions.shellcheck
  builtin.diagnostics.codespell.with({
    disabled_filetypes = { "c" },
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

if not ok then
  return false
end

null_ls.setup({
  update_in_insert = true,
  debounce = 500,
  sources = sources,
})
