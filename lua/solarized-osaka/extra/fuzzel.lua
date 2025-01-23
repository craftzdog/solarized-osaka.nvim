---@diagnostic disable: inject-field
local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  colors.blue1 = colors.blue300
  colors.border_highlight = colors.base02
  local fuzzelColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      fuzzelColors[k] = v:gsub("^#", "") .. "ff"
    end
  end

  local fuzzel = util.template(
    [[
[colors]
background=${bg_popup}
text=${fg}
match=${blue1}
selection=${blue300}
selection-match=${blue1}
selection-text=${fg}
border=${border_highlight}
]],
    fuzzelColors
  )
  return fuzzel
end

return M
