local util = require("solarized-osaka.util")

local M = {}
--base02
--- @param colors ColorScheme
function M.generate(colors)
  colors.fg_sidebar = colors.base0
  local tmux = util.template(
    [[
#!/usr/bin/env bash

# solarized-osaka colors for Tmux

set -g mode-style "fg=${blue},bg=${base02}"

set -g message-style "fg=${blue},bg=${base02}"
set -g message-command-style "fg=${blue},bg=${base02}"

set -g pane-border-style "fg=${base02}"
set -g pane-active-border-style "fg=${blue}"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=${blue},bg=${bg_statusline}"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style ${none}
set -g status-right-style ${none}

set -g status-left "#[fg=${black},bg=${blue},bold] #S #[fg=${blue},bg=${bg_statusline},nobold,nounderscore,noitalics]"
set -g status-right "#[fg=${bg_statusline},bg=${bg_statusline},nobold,nounderscore,noitalics]#[fg=${blue},bg=${bg_statusline}] #{prefix_highlight} #[fg=${base02},bg=${bg_statusline},nobold,nounderscore,noitalics]#[fg=${blue},bg=${base02}] %Y-%m-%d  %I:%M %p #[fg=${blue},bg=${base02},nobold,nounderscore,noitalics]#[fg=${black},bg=${blue},bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=${bg_statusline},bg=${bg_statusline},nobold,nounderscore,noitalics]#[fg=${blue},bg=${bg_statusline}] #{prefix_highlight} #[fg=${base02},bg=${bg_statusline},nobold,nounderscore,noitalics]#[fg=${blue},bg=${base02}] %Y-%m-%d  %H:%M #[fg=${blue},bg=${base02},nobold,nounderscore,noitalics]#[fg=${black},bg=${blue},bold] #h "
}

setw -g window-status-activity-style "underscore,fg=${fg_sidebar},bg=${bg_statusline}"
setw -g window-status-separator ""
setw -g window-status-style "${none},fg=${fg_sidebar},bg=${bg_statusline}"
setw -g window-status-format "#[fg=${bg_statusline},bg=${bg_statusline},nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=${bg_statusline},bg=${bg_statusline},nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=${bg_statusline},bg=${base02},nobold,nounderscore,noitalics]#[fg=${blue},bg=${base02},bold] #I  #W #F #[fg=${base02},bg=${bg_statusline},nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=${yellow}]#[bg=${bg_statusline}]#[fg=${bg_statusline}]#[bg=${yellow}]"
set -g @prefix_highlight_output_suffix ""
]],
    colors
  )
  return tmux
end

return M
