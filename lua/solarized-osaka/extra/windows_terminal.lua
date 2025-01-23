local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local windows_terminal = util.template(
    [[
# Add the following object to your Windows Terminal configuration
# https://learn.microsoft.com/en-us/windows/terminal/customize-settings/color-schemes#creating-your-own-color-scheme
{
    "background": "${bg}",
    "black": "${black}",
    "blue": "${blue}",
    "brightBlack": "${bg}",
    "brightBlue": "${blue}",
    "brightCyan": "${cyan}",
    "brightGreen": "${green}",
    "brightPurple": "${violet500}",
    "brightRed": "${red}",
    "brightWhite": "${fg}",
    "brightYellow": "${yellow}",
    "cursorColor": "${fg}",
    "cyan": "${cyan}",
    "foreground": "${fg}",
    "green": "${green}",
    "name": "${_style_name}",
    "purple": "${magenta}",
    "red": "${red}",
    "selectionBackground": "${blue700}",
    "white": "${base0}",
    "yellow": "${yellow}"
}
]],
    colors
  )

  return windows_terminal
end

return M
