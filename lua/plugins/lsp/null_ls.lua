-- NOTE: this null_ls can't return, unless really uninstall it
local ok, null_ls = pcall(require, "null-ls")

if not ok then
  vim.notify("null-ls not founded")
  return
end

local diagnostics = null_ls.builtins.diagnostics

local formatting = null_ls.builtins.formatting

local disabled_filetypes = {
  -- "c",
  -- "java",
  "json",
}

-- @filetypes
local enabale_filetypes = require("plugins.lsp.filetypes").filetypes

-- append gitcommit for null_ls's codespell
-- table.insert(enabale_filetypes, "gitcommit")
-- ref: http://static.kancloud.cn/kancloud/lua_style_guide/66331
enabale_filetypes[#enabale_filetypes + 1] = "sh"
enabale_filetypes[#enabale_filetypes + 1] = "gitcommit"

local sources = {
  -- builtin.diagnostics.gitlint, -- need install gitlint
  -- builtin.code_actions.shellcheck
  -- formatting.prettier.with({
  --   filetypes = {
  --     "json",
  --     "yaml",
  --   },
  -- }),
  -- diagnostics.markdownlint.with({
  --   filetypes = {
  --     "markdown",
  --   },
  -- }), -- need install markdownlint
  diagnostics.codespell.with({
    disabled_filetypes = disabled_filetypes,
    filetypes = enabale_filetypes,
  }), -- need install codespell
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  -- you can reuse a shared lspconfig on_attach callback here
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          vim.lsp.buf.formatting_sync()
        end,
      })
    end
  end,
  update_in_insert = false,
  debounce = 500,
  sources = sources,
})
