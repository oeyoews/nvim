local package = "plugins.lsp"

local modules = {
  "treesitter",
  "lspinstall", -- preinstall some servers
  "nvim_cmp", -- config completion
  "lspconfig",
  "lspsaga",
}

for _, load_module in ipairs(modules) do
  load_module = package .. "." .. load_module

  local status_ok, _ = pcall(require, load_module)

  if not status_ok then
    local plugin = "Modules"
    vim.notify("Failed to load " .. load_module, "warn", {
      title = plugin,
    })
  end
end
