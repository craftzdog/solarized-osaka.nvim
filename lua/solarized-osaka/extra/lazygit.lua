local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local lazygit = util.template(
    [[
gui:
  nerdFontsVersion: "3"
  theme:
    activeBorderColor:
      - "${orange}"
      - "bold"
    inactiveBorderColor:
      - "${yellow700}"
    searchingActiveBorderColor:
      - "${orange}"
      - "bold"
    optionsTextColor:
      - "${blue}"
    selectedLineBgColor:
      - "${blue700}"
    cherryPickedCommitFgColor:
      - "${blue}"
    cherryPickedCommitBgColor:
      - "${magenta}"
    markedBaseCommitFgColor:
      - "${blue}"
    markedBaseCommitBgColor:
      - "${yellow}"
    unstagedChangesColor:
      - "${red300}"
    defaultFgColor:
      - "${fg}"
]],
    colors
  )
  return lazygit
end

return M
