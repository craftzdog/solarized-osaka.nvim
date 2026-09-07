local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
    local ptyxisColors = {}
    for k, v in pairs(colors) do
        if type(v) == "string" then
            ptyxisColors[k] = v
        end
        if k == "_style" then
            ptyxisColors[k] = v:gsub("^%l", string.upper)
        end
    end

    local ptyxis = util.template(
        [[
[Palette]
Name=Solarized Osaka

[${_style}]
Foreground=${fg}
Background=${bg}
Color0=${base04}
Color1=${red}
Color2=${green}
Color3=${yellow}
Color4=${blue}
Color5=${magenta}
Color6=${cyan}
Color7=${base0}
Color8=${bg}
Color9=${red}
Color10=${green}
Color11=${yellow}
Color12=${blue}
Color13=${magenta}
Color14=${cyan}
Color15=${fg}]],
        ptyxisColors
    )

    return ptyxis
end

return M
