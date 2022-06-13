local ok, null_ls = pcall(require, 'null-ls')
local builtin = null_ls.builtins

if not ok then
    return false
end

null_ls.setup()

null_ls.setup({
    sources = {
        builtin.formatting.stylua,
        builtin.diagnostics.eslint,
        builtin.completion.spell,
        builtin.code_actions.shellcheck
    },
})
