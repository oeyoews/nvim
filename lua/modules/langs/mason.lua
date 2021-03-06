-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   mason.lua                                                                --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 10:42:39 by oeyoews                                  --
--   Updated: 2022/08/03 09:24:18 by oeyoews                                  --
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

oeyoews.autocmd("FileType", {
  pattern = {
    "mason.nvim",
    "lspinfo",
    "null-ls-info",
  },
  callback = function()
    check_npm()
  end,
})

local mason_exclude = {}

-- clangd is too large, install literally slow, use system
if vim.fn.executable("clangd") == 1 then
  mason_exclude[#mason_exclude + 1] = "clangd"
end

if oeyoews.options.enable_clangd then
  oeyoews.servers[#oeyoews.servers + 1] = "clangd"
end

local check_mason = function(bin)
  if vim.fn.executable(bin) == 0 then
    oeyoews.mason[#oeyoews.mason + 1] = bin
  end
end

local tbl = {
  "proselint",
  "prettier",
  "clang-format",
  "fixjson",
  "codespell", -- spell
  "stylua", -- lua
  "black", -- ptyhon format
  "shellcheck",
}

for _, value in ipairs(tbl) do
  check_mason(value)
end

-- @note: if some servers not installed, please run `checkhelth mason`
require("mason").setup({
  ui = {
    icons = {
      package_installed = "??? ",
      package_pending = "??? ",
      package_uninstalled = "??? ",
    },
  },
  github = {
    download_url_template = "https://github.com/%s/releases/download/%s/%s",
  },
})

require("mason-tool-installer").setup({
  ensure_installed = oeyoews.mason,
  auto_update = false,
})

require("mason-lspconfig").setup({
  -- ensure_installed = oeyoews.servers,
  -- use automatic_installation replace ensure_installed
  automatic_installation = {
    exclude = mason_exclude, -- if this system no clangd, you need comment this line to install clangd by mason
  },
})

vim.keymap.set("n", "<space>lm", "<cmd>Mason<cr>", {
  desc = "????  Show mason",
})
