-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   header42.lua                                       :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: oeyoews <oeyoews>                          +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2022/07/31 12:45:49 by oeyoews           #+#    #+#             --
--   Updated: 2022/07/31 12:46:39 by oeyoews          ###   ########          --
--                                                                            --
-- -------------------------------------------------------------------------- --

local M = {}

local config
local utils = require("header42.utils")
local bo = vim.bo
local api = vim.api

M.setup = function(opts)
  config = require("header42.config"):set(opts)
end

--- Global function for command!
_G.Stdheader = function()
  local filetype = bo.filetype
  -- Error handling
  if config.ft[filetype] == nil then
    utils.error(string.format("Filetype '%s' is not registered", filetype))
    return
  else
    local fields = { "start_comment", "end_comment", "fill_comment" }
    for _, field in ipairs(fields) do
      if config.ft[filetype][field] == nil then
        utils.error(string.format("Missing required field for filetype '%s': %s", filetype, field))
        return
      end
    end
  end
  local header = require("header42.header")
  local ft_config = config.ft[filetype]
  -- If header was not updated, insert it
  if not header.update(ft_config) then
    header.insert(ft_config)
  end
end

_G.Stdheader_update = function()
  local filetype = bo.filetype
  -- Error handling
  if config.ft[filetype] == nil then
    return
  else
    local fields = { "start_comment", "end_comment", "fill_comment" }
    for _, field in ipairs(fields) do
      if config.ft[filetype][field] == nil then
        utils.warn(
          string.format("Could not update. Reason: Missing required field for filetype '%s': %s", filetype, field)
        )
        return
      end
    end
  end
  local ft_config = config.ft[filetype]
  require("header42.header").update(ft_config)
end
api.nvim_command([[command! Stdheader lua Stdheader()]])
api.nvim_command([[autocmd BufWritePre * lua Stdheader_update()]])
return M
