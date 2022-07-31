-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   config.lua                                         :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: oeyoews <oeyoews>                          +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2022/07/31 12:38:10 by oeyoews           #+#    #+#             --
--   Updated: 2022/07/31 13:03:36 by oeyoews          ###   ########          --
--                                                                            --
-- -------------------------------------------------------------------------- --

---@class Config User config defaults
---@field user string: default user
---@field mail string: default mail
---@field ft table: filetype configuration
local Config = {
  user = "oeyoews",
  mail = "oeyoews@gmail.com",
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
  self.mail = opts.mail or "jyao4783@gmail.com"
  if opts.ft ~= nil then
    self.ft = vim.tbl_deep_extend("force", self.ft, opts.ft)
  end
  return self
end

return Config
