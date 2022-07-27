if vim.fn.executable("codespell") == 0 then
  if oeyoews.options.debug_mode then
    local msg_null = "Please install codespell to use null-ls's codespell"
    vim.notify(msg_null)
  end
  return
end

local null_ls = require("null-ls")
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion
local formatting = null_ls.builtins.formatting

local disabled_filetypes = {
  -- "jsonc", "json", "html", "c", "java", "javascript",
}

local sources = {
  -- completion.spell, -- ugly
  formatting.stylua, -- this is comflict for lsp, choice
  diagnostics.codespell.with({}),
  -- @markdown
  -- diagnostics.markdownlint.with({
  --   filetypes = {
  --     "markdown",
  --   },
  -- }), -- need install markdownlint
  -- diagnostics.yamllint, -- need install yamllint
}

-- autoformatlly format
-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  update_in_insert = false,
  debounce = 500,
  sources = sources,
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
})
