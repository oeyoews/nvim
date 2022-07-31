-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   constants.lua                                      :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: oeyoews <oeyoews>                          +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2022/07/31 12:43:19 by oeyoews           #+#    #+#             --
--   Updated: 2022/08/01 00:42:24 by oeyoews          ###   ########          --
--                                                                            --
-- -------------------------------------------------------------------------- --

local values = {}

--- École 42 ASCII art.
-- this s order is fixed, can't modify easily
values.header = [[%2s %74s %2s
%2s                                                                            %2s
%2s                                                                            %2s
%2s   %s%s                      %2s
%2s                                                                            %2s
%2s   By: %s <%s>%s                          %2s
%2s                                                                            %2s
%2s   Created: %19s by %s%s                       %2s
%2s   Updated: %19s by %s%s                        %2s
%2s                                                                            %2s
%2s %74s %2s

]]

values.length = 80
values.margin = 5

--- Makes constants read-only by using lua `setmetatable`
-- @param tbl Table with all constants values
local set_constants = function(tbl)
  return setmetatable({}, {
    __index = tbl,
    __newindex = function(_, _, _)
      error("[header42] Attempting to change constant value.")
    end,
  })
end

local constants = set_constants(values)

return constants
