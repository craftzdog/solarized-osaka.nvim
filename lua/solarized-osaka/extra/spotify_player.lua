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
background = "${bg_dark}"
foreground = "${fg_dark}"
black = "${terminal_black}"
red = "${red}"
green = "${green}"
yellow = "${yellow}"
blue = "${blue}"
magenta = "${magenta}"
cyan = "${cyan}"
white = "${base04}"
bright_black = "${bg}"
bright_red = "${red1}"
bright_green = "${green1}"
bright_yellow = "${orange}"
bright_blue = "${blue2}"
bright_magenta = "${magenta300}"
bright_cyan = "${blue5}"
bright_white = "${fg}"
]=]

return M
