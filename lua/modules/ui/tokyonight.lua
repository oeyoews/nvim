local g = vim.g

local tokyonight = require("tokyonight")

-- math.randomseed(os.time())

local function theme_toggle()
  local h = tonumber(os.date("%H"))
  if h > 8 and h < 20 then
    return "storm"
  else
    return "night"
  end
end

local theme = theme_toggle()

g.tokyonight_style = theme
tokyonight.colorscheme()

-- option: storm(normal), day, night
-- g.tokyonight_style = "night"

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
-- g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
