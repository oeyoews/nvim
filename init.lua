-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   init.lua                                           :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: oeyoews <oeyoews>                          +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2022/07/31 12:33:07 by oeyoews           #+#    #+#             --
--   Updated: 2022/07/31 12:49:18 by oeyoews          ###   ########          --
--                                                                            --
-- -------------------------------------------------------------------------- --

--   Main
local files = require("user.modules").files
local modules = require("user.modules").modules
local pcall = require("user.pcall")

-- ﱤ load modules
pcall.setup("modules", modules, files)
