local null_ls = require('null-ls')

local M = {}

function M.setup(on_attach)
	null_ls.setup({
		debounce = 500,
		on_attach = on_attach,
		log = {
			level = 'error',
		},
		sources = {
			null_ls.builtins.formatting.stylua,
			null_ls.builtins.formatting.black, -- python
			null_ls.builtins.formatting.shfmt,
			null_ls.builtins.formatting.prettierd.with({
				filetypes = { 'markdown' },
			}),
			null_ls.builtins.formatting.buf, -- protobuf
			null_ls.builtins.formatting.taplo, -- toml
			null_ls.builtins.diagnostics.codespell,
			null_ls.builtins.diagnostics.markdownlint,
			null_ls.builtins.diagnostics.sqlfluff.with({
				extra_args = { '--dialect', 'postgres' },
			}),
		},
	})
end

return M
