local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local fishColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      fishColors[k] = v:gsub("^#", "")
    end
  end

  local fish = util.template(
    [[
    # solarized osaka

    # Syntax Highlighting Colors
    fish_color_normal ${fg}
    fish_color_command ${cyan}
    fish_color_keyword ${magenta}
    fish_color_quote ${yellow}
    fish_color_redirection ${fg}
    fish_color_end ${orange}
    fish_color_error ${red}
    fish_color_param ${violet500}
    fish_color_comment ${base01}
    fish_color_selection --background=${blue700}
    fish_color_search_match --background=${blue700}
    fish_color_operator ${green}
    fish_color_escape ${magenta}
    fish_color_autosuggestion ${base01}

    # Completion Pager Colors
    fish_pager_color_progress ${base01}
    fish_pager_color_prefix ${cyan}
    fish_pager_color_completion ${fg}
    fish_pager_color_description ${base01}
    fish_pager_color_selected_background --background=${blue700}
  ]],
    fishColors
  )

  return fish
end

return M
