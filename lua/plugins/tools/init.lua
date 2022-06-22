local package = "plugins.tools"

local modules = {
  "notify", -- first
  "hop",
  "colorizer",
  "gitsigns",
  "comment",
  "autopairs",
  "highstr",
  "neorg",
  "persistence",
  "todocomments",
  "tabout",
  "telescope",
  "whichkey",
  "toggleterm",
  "icon_picker",
  "calendar",
}

for _, load_module in ipairs(modules) do
  load_module = package .. "." .. load_module

  local status_ok, _ = pcall(require, load_module)
  if not status_ok then
    -- vim.api.nvim_err_writeln("Failed to load " .. load_module .. "\n\n" .. fault)
    local plugin = "Modules"
    vim.notify(
    --[[ {
      }, ]]
      "Failed to load " .. load_module,
      "warn",
      {
        title = plugin,
      }
    )
    -- return
  end
  -- require(package .. "." .. load_module)
end
