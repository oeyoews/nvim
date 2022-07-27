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
  formatting.prettier,
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
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client)
      -- apply whatever logic you want (in this example, we'll only use null-ls)
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
