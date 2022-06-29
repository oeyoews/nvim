-- NOTE: this null_ls can't return, unless really uninstall it
local null_ls = require("null-ls")

local diagnostics = null_ls.builtins.diagnostics

local formatting = null_ls.builtins.formatting

local disabled_filetypes = {
  -- "c",
  -- "java",
  "json",
}

-- @filetypes
local enabale_filetypes = require("modules.langs.parsers")

enabale_filetypes = enabale_filetypes.parsers

-- append gitcommit for null_ls's codespell
-- table.insert(enabale_filetypes, "gitcommit")
-- ref: http://static.kancloud.cn/kancloud/lua_style_guide/66331
enabale_filetypes[#enabale_filetypes + 1] = "sh"
enabale_filetypes[#enabale_filetypes + 1] = "gitcommit"

local sources = {
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
  -- diagnostics.yamllint, -- need install yamllint
  formatting.prettier.with({
    disabled_filetypes = disabled_filetypes,
  }), -- install prettier
  diagnostics.codespell.with({
    disabled_filetypes = disabled_filetypes,
    filetypes = enabale_filetypes,
  }), -- need install codespell
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
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
