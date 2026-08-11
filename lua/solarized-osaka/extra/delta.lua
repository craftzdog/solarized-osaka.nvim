local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local delta = util.template(
    [[
[delta]
  minus-style                   = syntax "${red950}"
  minus-non-emph-style          = syntax "${red950}"
  minus-emph-style              = syntax "${red900}"
  minus-empty-line-marker-style = syntax "${red950}"
  line-numbers-minus-style      = "${red500}"
  plus-style                    = syntax "${cyan900}"
  plus-non-emph-style           = syntax "${cyan900}"
  plus-emph-style               = syntax "${green900}"
  plus-empty-line-marker-style  = syntax "${cyan900}"
  line-numbers-plus-style       = "${green500}"
  line-numbers-zero-style       = "${base01}"
]],
    colors
  )
  return delta
end

return M
