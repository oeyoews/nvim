-- @FileName: init.lua
-- @Description: init

local package = "core" -- require package

local modules = {
  "disable",
  "options", -- basic options
  "mappings", -- basic mappings
  "functions",
  "modules", -- enable modules
}

-- disable to read shadafile
-- HACK: this shadafile like viminfo(vim), to story command history
-- vim.opt.shadafile = "NONE"

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
