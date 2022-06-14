local ok, null_ls = pcall(require, 'null-ls')
local builtin = null_ls.builtins

if not ok then
  return false
end

null_ls.setup({
  debounce = 500,
  sources = {
    -- builtin.formatting.stylua,
    -- builtin.diagnostics.codespell, -- need install codespell
    -- builtin.formatting.prettierd.with,
    -- builtin.diagnostics.misspell,
    builtin.diagnostics.markdownlint, -- need install markdownlint
    -- builtin.diagnostics.gitlint, -- need install markdownlint
    -- builtin.completion.spell,
    -- builtin.code_actions.shellcheck
  },
})
