-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   mason.lua                                                                --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 10:42:39 by oeyoews                                  --
--   Updated: 2022/08/03 22:13:41 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- TODO: see masonlog to see more error info, sometime occur error
-- use vimenter to notify_once
local check_npm = function()
  if vim.fn.executable("npm") ~= 1 then
    vim.notify_once(" Please install npm to lsp-tools", "warn", {
      title = "Mason",
    })
  end
end

local mason_exclude = {}

-- clangd is too large, install literally slow, use system
if vim.fn.executable("clangd") == 1 then
  mason_exclude[#mason_exclude + 1] = "clangd"
end

if oeyoews.options.enable_clangd then
  oeyoews.servers[#oeyoews.servers + 1] = "clangd"
end

-- @note: if some servers not installed, please run `checkhelth mason`
require("mason").setup({
  ui = {
    icons = {
      package_installed = " ",
      package_pending = " ",
      package_uninstalled = " ",
    },
  },
  github = {
    download_url_template = "https://github.com/%s/releases/download/%s/%s",
  },
})

require("mason-lspconfig").setup({
  -- ensure_installed = oeyoews.servers,
  -- use automatic_installation replace ensure_installed
  automatic_installation = {
    exclude = mason_exclude, -- if this system no clangd, you need comment this line to install clangd by mason
  },
})

--   mappings
vim.keymap.set("n", "<space>lm", "<cmd>Mason<cr>", {
  desc = "𝓜  ﯓShow mason",
})

-- cmd
oeyoews.autocmd("FileType", {
  group = oeyoews.mygroup,
  pattern = {
    "mason.nvim",
    "lspinfo",
    "null-ls-info",
  },
  callback = function()
    check_npm()
  end,
})
