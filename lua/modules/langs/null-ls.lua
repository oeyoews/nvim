require('modules.langs.mason_tools_install')

local null_ls = require('null-ls')
local formatting = null_ls.builtins.formatting

local sources = {
  formatting.prettier.with({
    disabled_filetypes = {
      'markdown',
    },
  }),
  formatting.stylua.with({
  }),
}

local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client)
      return client.name == 'null-ls'
    end,
    bufnr = bufnr,
  })
end

function on_attach(client, bufnr)
  vim.api.nvim_clear_autocmds({
    group = augroup,
    buffer = bufnr,
  })
  oeyoews.autocmd('BufWritePre', {
    group = augroup,
    buffer = bufnr,
    callback = function()
      lsp_formatting(bufnr)
    end,
  })
end

null_ls.setup({
  update_in_insert = false,
  debounce = 500,
  sources = sources,
  on_attach = on_attach,
})

vim.keymap.set('n', '<space>ln', '<cmd>NullLsInfo<cr>', {
  silent = true,
  desc = ' show null-ls info',
})
