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
  -- "nvim_tree",
}

for _, load_module in ipairs(modules) do
  require(package .. "." .. load_module)
end
