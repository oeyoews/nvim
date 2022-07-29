local null_ls = require("null-ls")
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

local sources = {
  formatting.stylua, -- this is conflict for lsp, choice
  formatting.prettier,
  -- formatting.black, -- not work
  diagnostics.codespell.with({
    filetypes = {
      "markdown",
      "lua",
    },
  }),
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client)
      return client.name == "null-ls"
    end,
    bufnr = bufnr,
  })
end

null_ls.setup({
  update_in_insert = false,
  debounce = 500,
  sources = sources,
  on_attach = function(client, bufnr)
    if oeyoews.nvim_version > 7 and client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          if oeyoews.nvim_version > 7 then
            lsp_formatting(bufnr)
          else
            vim.lsp.buf.formatting_sync()
          end
        end,
      })
    end
  end,
})
