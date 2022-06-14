local ok, null_ls = pcall(require, 'null-ls')
local builtin = null_ls.builtins

if not ok then
  return false
end

null_ls.setup({
  debounce = 500,
  sources = {
    -- builtin.formatting.stylua,
    builtin.diagnostics.markdownlint, -- need install markdownlint
    builtin.diagnostics.codespell.with({
      filetypes = {
        'lua',
        'markdown',
        'vim',
        'python',
      },
    }), -- need install codespell
    -- builtin.formatting.prettierd.with,
    -- builtin.diagnostics.misspell,
    -- builtin.diagnostics.gitlint, -- need install gitlint
    -- builtin.completion.spell,
    -- builtin.code_actions.shellcheck
  },
})
