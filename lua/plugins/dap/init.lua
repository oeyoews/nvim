-- local package = "plugins.dap"
--
-- local modules = {
--   "dap_config",
-- }
--
-- for _, load_module in ipairs(modules) do
--   require(package .. "." .. load_module)
-- end

require("plugins.dap.dap-config").setup()
require("plugins.dap.dap-ui")
require("plugins.dap.dap-virtual-text")
require("plugins.dap.dap-util")
