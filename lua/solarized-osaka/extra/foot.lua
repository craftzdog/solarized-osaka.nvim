local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local footColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      footColors[k] = v:gsub("^#", "")
    end
  end

  local foot = util.template(
    [[
[cursor]
color=${fg} ${blue700}

[colors]
foreground=${fg}
background=${bg}
selection-foreground=${fg}
selection-background=${blue700}
urls=${green500}

regular0=${black}
regular1=${red}
regular2=${green}
regular3=${yellow}
regular4=${blue}
regular5=${magenta}
regular6=${cyan}
regular7=${base0}

bright0=${bg}
bright1=${red}
bright2=${green}
bright3=${yellow}
bright4=${blue}
bright5=${magenta}
bright6=${cyan}
bright7=${fg}

16=${orange}
17=${red300}]],
    footColors
  )

  return foot
end

return M
