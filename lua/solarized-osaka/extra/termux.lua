local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local termux = util.template(
    [[
# -----------------------------------------------------------------------------
# Theme: ${_style_name}
# Upstream: ${_upstream_url}
# -----------------------------------------------------------------------------

background: ${bg}
foreground: ${fg}

# Normal colors
color0:  ${base04}
color1:  ${red500}
color2:  ${green500}
color3:  ${yellow500}
color4:  ${blue500}
color5:  ${magenta500}
color6:  ${cyan500}
color7:  ${base3}

# Bright colors
color8:  ${base02}
color9:  ${red300}
color10: ${green300}
color11: ${yellow300}
color12: ${blue300}
color13: ${magenta300}
color14: ${cyan300}
color15: ${base4}

# Extended colors
color16: ${orange}
color17: ${red700}
]],
    colors
  )

  return termux
end

return M
