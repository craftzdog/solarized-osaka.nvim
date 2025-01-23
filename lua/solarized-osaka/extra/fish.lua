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
    # solarized-osaka Color Palette
    set -l foreground ${fg}
    set -l selection ${blue700}
    set -l base01 ${base01}
    set -l red ${red}
    set -l orange ${orange}
    set -l yellow ${yellow}
    set -l green ${green}
    set -l purple ${violet500}
    set -l cyan ${cyan}
    set -l pink ${magenta}

    # Syntax Highlighting Colors
    set -g fish_color_normal $foreground
    set -g fish_color_command $cyan
    set -g fish_color_keyword $pink
    set -g fish_color_quote $yellow
    set -g fish_color_redirection $foreground
    set -g fish_color_end $orange
    set -g fish_color_error $red
    set -g fish_color_param $purple
    set -g fish_color_comment $base01
    set -g fish_color_selection --background=$selection
    set -g fish_color_search_match --background=$selection
    set -g fish_color_operator $green
    set -g fish_color_escape $pink
    set -g fish_color_autosuggestion $base01

    # Completion Pager Colors
    set -g fish_pager_color_progress $base01
    set -g fish_pager_color_prefix $cyan
    set -g fish_pager_color_completion $foreground
    set -g fish_pager_color_description $base01
    set -g fish_pager_color_selected_background --background=$selection

  ]],
    fishColors
  )

  return fish
end

return M
