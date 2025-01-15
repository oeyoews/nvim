local check_npm = function()
  if vim.fn.executable('npm') ~= 1 then
    vim.notify_once(' Please install npm to lsp-tools', 'warn', {
      title = 'Mason',
    })
  end
end

local mason_exclude = {}

-- if vim.fn.executable('clangd') == 1 then
--   mason_exclude[#mason_exclude + 1] = 'clangd'
-- end
--
-- if oeyoews.options.enable_clangd then
--   oeyoews.servers[#oeyoews.servers + 1] = 'clangd'
-- end

require('mason').setup({
  ui = {
    icons = {
      package_installed = ' ',
      package_pending = ' ',
      package_uninstalled = ' ',
    },
  },
  github = {
    download_url_template = 'https://github.com/%s/releases/download/%s/%s',
  },
})

require('mason-lspconfig').setup({
  ensure_installed = oeyoews.servers,
  -- use automatic_installation replace ensure_installed
  -- not work
  --[=[ automatic_installation = {
    -- exclude = mason_exclude, -- if this system no clangd, you need comment this line to install clangd by mason
  }, --]=]
})

--   mappings
vim.keymap.set('n', '<space>lm', '<cmd>Mason<cr>', {
  desc = 'Ⓜ Show mason',
})

-- cmd
oeyoews.autocmd('FileType', {
  group = oeyoews.mygroup,
  pattern = {
    'mason',
    'lspinfo',
    'null-ls-info',
  },
  callback = function()
    check_npm()
  end,
})
