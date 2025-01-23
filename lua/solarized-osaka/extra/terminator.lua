local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local terminator = util.template(
    [=[
[[${_style_name}]]
  palette = "${black}:${red}:${green}:${yellow}:${blue}:${magenta}:${cyan}:${base0}:${bg}:${red}:${green}:${yellow}:${blue}:${magenta}:${cyan}:${violet500}"
  background_color = "${bg}"
  foreground_color = "${fg}"
  ]=],
    colors
  )
  return terminator
end

return M
