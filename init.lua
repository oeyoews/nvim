-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   init.lua                                           :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: oeyoews <jyao4783@gmail.com>               +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2022/07/31 13:04:04 by oeyoews           #+#    #+#             --
--   Updated: 2022/07/31 13:04:05 by oeyoews          ###   ########          --
--                                                                            --
-- -------------------------------------------------------------------------- --

--   Main
local files = require("user.modules").files
local modules = require("user.modules").modules
local pcall = require("user.pcall")

-- ﱤ load modules
pcall.setup("modules", modules, files)
