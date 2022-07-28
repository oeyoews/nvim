-- clangd is too large, install literally slow, use system
if oeyoews.options.enable_clangd then
  oeyoews.servers[#oeyoews.servers + 1] = "clangd"
end

-- to less error tip
if vim.fn.executable("prettier") and vim.fn.executable("npm") == 1 then
  oeyoews.mason[#oeyoews.mason + 1] = "prettier"
end

local check_mason = function(bin)
  if vim.fn.executable(bin) == 0 then
    oeyoews.mason[#oeyoews.mason + 1] = bin
  end
end

local tbl = {
  "codespell",
  "stylua",
  "shellcheck",
}

for _, value in ipairs(tbl) do
  check_mason(value)
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

require("mason-tool-installer").setup({
  ensure_installed = oeyoews.mason,
  auto_update = false,
})

require("mason-lspconfig").setup({
  -- ensure_installed = oeyoews.servers,
  -- use automatic_installation replace ensure_installed
  automatic_installation = {
    exclude = { "clangd" }, -- if this system no clangd, you need comment this line to install clangd by mason
  },
})

vim.keymap.set("n", "<space>lm", "<cmd>Mason<cr>", { desc = "𝓜  Show mason" })
