local dap = require("dap")

local M = {}
function M.setup()
  dap.configurations.lua = {
    {
      type = "nlua",
      request = "attach",
      name = "Attach to running Neovim instance",
      host = "127.0.0.1",
      port = "7058",
    },
  }

  dap.adapters.nlua = function(callback, config)
    callback({ type = "server", host = config.host, port = config.port })
  end
end

return M
