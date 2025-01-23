local util = require("solarized-osaka.util")
local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local process_compose = util.template(
    [=[
style:
  name: ${_colors_name}
  body:
    fgColor: '${fg}'
    bgColor: '${base03}'
    secondaryTextColor: '${base0}'
    tertiaryTextColor: '${base02}'
    borderColor: '${base01}'
  stat_table:
    keyFgColor: '${yellow}'
    valueFgColor: '${fg}'
    logoColor: '${yellow}'
  proc_table:
    fgColor: '${blue}'
    fgWarning: '${yellow}'
    fgPending: '${base02}'
    fgCompleted: '${green}'
    fgError: '${red1}'
    headerFgColor: '${fg}'
  help:
    fgColor: '${blue300}'
    keyColor: '${fg}'
    hlColor: '${green}'
    categoryFgColor: '${blue5}'
  dialog:
    fgColor: '${blue300}'
    bgColor: '${black}'
    contrastBgColor: '${bg}'
    attentionBgColor: '${red1}'
    buttonFgColor: '${black}'
    buttonBgColor: '${bg_highlight}'
    buttonFocusFgColor: '${black}'
    buttonFocusBgColor: '${blue}'
    labelFgColor: '${yellow}'
    fieldFgColor: '${black}'
    fieldBgColor: '${blue700}'
]=],
    colors
  )

  return process_compose
end

return M
