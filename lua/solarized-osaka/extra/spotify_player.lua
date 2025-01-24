local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  return util.template(M.template, colors)
end
M.template = [=[
[[themes]]
name = "${_style_name}"
[themes.palette]
background = "${base03}"
foreground = "${base0}"
black = "${bg}"
red = "${red}"
green = "${green}"
yellow = "${yellow}"
blue = "${blue}"
magenta = "${magenta}"
cyan = "${cyan}"
white = "${base04}"
bright_black = "${bg}"
bright_red = "${red300}"
bright_green = "${green500}"
bright_yellow = "${orange}"
bright_blue = "${blue300}"
bright_magenta = "${magenta300}"
bright_cyan = "${blue700}"
bright_white = "${fg}"
]=]

return M
