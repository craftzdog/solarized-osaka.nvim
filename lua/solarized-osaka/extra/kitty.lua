local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local kitty = util.template(
    [[
# vim:ft=kitty

## name: ${_style_name}
## license: MIT
## author: Folke Lemaitre
## upstream: ${_upstream_url}


background ${bg}
foreground ${fg}
selection_background ${base03}
selection_foreground ${fg}
url_color ${cyan}
cursor ${fg}
cursor_text_color ${bg}

# Tabs
active_tab_background ${cyan}
active_tab_foreground ${base4}
inactive_tab_background ${bg_highlight}
inactive_tab_foreground ${base00}
#tab_bar_background ${black}

# Windows
active_border_color ${blue}
inactive_border_color ${bg_highlight}

# normal
color0 ${black}
color1 ${red}
color2 ${green}
color3 ${yellow}
color4 ${blue}
color5 ${magenta}
color6 ${cyan}
color7 ${fg}

# bright
color8 ${base01}
color9 ${red}
color10 ${green}
color11 ${yellow}
color12 ${blue}
color13 ${magenta}
color14 ${cyan}
color15 ${fg}

# extended colors
color16 ${orange}
color17 ${red300}
]],
    colors
  )
  return kitty
end

return M
