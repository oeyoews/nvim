-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   utils.lua                                          :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: oeyoews <oeyoews>                          +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2022/07/31 12:40:40 by oeyoews           #+#    #+#             --
--   Updated: 2022/07/31 12:44:56 by oeyoews          ###   ########          --
--                                                                            --
-- -------------------------------------------------------------------------- --

local utils = {}

--- Log message
local function log(msg, hl)
  hl = hl or "String"
  vim.api.nvim_echo({ { "[header42.nvim] ", hl }, { msg } }, true, {})
end

--- Warning log message
utils.warn = function(msg)
  log(msg, "WarningMsg")
end

--- Error log message
utils.error = function(msg)
  log(msg, "Error")
end

return utils
