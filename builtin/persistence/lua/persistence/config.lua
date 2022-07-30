local M = {}

---@class PersistenceOptions
local defaults = {
  -- dir = vim.fn.stdpath("data") .. "/sessions/",
  dir = "/tmp/sessions/",
  options = { "buffers", "curdir", "tabpages", "winsize" }, -- sessionoptions used for saving
}

---@type PersistenceOptions
M.options = {}

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", {}, defaults, opts or {})
  vim.fn.mkdir(M.options.dir, "p")
end

return M
