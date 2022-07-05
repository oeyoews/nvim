-- NOTE: this null_ls can't return, unless really uninstall it
local null_ls = require("null-ls")

local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion
local formatting = null_ls.builtins.formatting

local disabled_filetypes = {
  -- "jsonc",
  -- "json",
  -- "html",
  -- "c",
  -- "java",
  -- "javascript",
}

-- @parsers.lua
local enabale_filetypes = require("user.parsers")

local sources = {
  -- completion.spell, -- ugly
  -- diagnostics.codespell,
  diagnostics.codespell.with({}),
  -- @markdown
  -- diagnostics.markdownlint.with({
  --   filetypes = {
  --     "markdown",
  --   },
  -- }), -- need install markdownlint
  -- @yaml
  -- diagnostics.yamllint, -- need install yamllint
  -- diagnostics.eslint, -- need install eslint
  -- diagnostics.standardjs, -- need install eslint
  -- need install codespell
}

-- autoformatlly format
-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  -- on_attach = function(client, bufnr)
  --   if client.supports_method("textDocument/formatting") then
  --     vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
  --     vim.api.nvim_create_autocmd("BufWritePre", {
  --       group = augroup,
  --       buffer = bufnr,
  --       callback = function()
  --         -- vim.lsp.buf.format({
  --         --   bufnr = bufnr,
  --         --   filter = function(client)
  --         --     return client.name == "null-ls"
  --         --   end
  --         -- })
  --         vim.lsp.buf.formatting_sync()
  --       end,
  --     })
  --   end
  -- end,
  update_in_insert = false,
  debounce = 500,
  sources = sources,
})
