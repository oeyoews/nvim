local package = 'plugins' -- load package

local modules = {
  enable_modules = {
    'plugins', -- install plugin list
    'perfect', -- performance
    'lsp', -- lsp settings
    'themes', -- some themes
    'ui', -- ui configuration
    'tools', -- some tools
  },
}

for _, load_module in ipairs(modules.enable_modules) do
  require(package .. '.' .. load_module)
end
