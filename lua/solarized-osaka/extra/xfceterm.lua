local util = require("solarized-osaka.util")

local M = {}

-- @param colors ColorScheme
function M.generate(colors)
  local xfceterm = util.template(
    [[
[Scheme]
Name=solarized-osaka Colors
ColorBackground=${bg}
ColorForeground=${fg}

ColorSelectionBackground=${blue700}
ColorSelection=${fg}

ColorPalette=${black};${red};${green};${yellow};${blue};${magenta};${cyan};${base0};${bg};${red};${green};${yellow};${blue};${magenta};${cyan};${fg}
]],
    colors
  )
  return xfceterm
end

return M
