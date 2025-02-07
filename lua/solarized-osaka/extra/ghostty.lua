local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local theme = util.template(
    [[
palette = 0=${base04}
palette = 1=${red500}
palette = 2=${green500}
palette = 3=${yellow500}
palette = 4=${blue500}
palette = 5=${magenta500}
palette = 6=${cyan500}
palette = 7=${base3}
palette = 8=${base02}
palette = 9=${red300}
palette = 10=${green300}
palette = 11=${yellow300}
palette = 12=${blue300}
palette = 13=${magenta300}
palette = 14=${cyan300}
palette = 15=${base4}

background = ${bg}
foreground = ${fg}
cursor-color = ${fg}
selection-background = ${blue700}
selection-foreground = ${fg}
]],
    colors
  )
  return theme
end

return M
