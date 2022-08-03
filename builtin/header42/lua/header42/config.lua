-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   config.lua                                                               --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/03 11:43:13 by oeyoews                                  --
--   Updated: 2022/08/03 14:02:15 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

---@class Config User config defaults
---@field user string: default user
---@field mail string: default mail
---@field ft table: filetype configuration

local Config = {
  -- just for linux this user var
  user = os.getenv("USER"),
  mail = "oeyoews@gmail.com",
  -- NOTE: this comment must is two
  ft = {
    c = {
      start_comment = "/*",
      end_comment = "*/",
      fill_comment = "*",
    },
    cpp = {
      start_comment = "/*",
      end_comment = "*/",
      fill_comment = "*",
    },
    make = {
      start_comment = "##",
      end_comment = "##",
      fill_comment = "#",
    },
    python = {
      start_comment = "##",
      end_comment = "##",
      fill_comment = "#",
    },
    lua = {
      start_comment = "--",
      end_comment = "--",
      fill_comment = "-",
    },
    vim = {
      start_comment = '""',
      end_comment = '""',
      fill_comment = "*",
    },
  },
}

setmetatable(Config, {
  __call = function(cls, ...)
    return cls:new(...)
  end,
})

---@param opts table
function Config:set(opts)
  self.__index = self
  self.user = opts.user or "oeyoews"
  self.mail = opts.mail or "mail"
  if opts.ft ~= nil then
    self.ft = vim.tbl_deep_extend("force", self.ft, opts.ft)
  end
  return self
end

return Config
