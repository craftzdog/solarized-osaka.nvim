#!/usr/bin/env bash

# solarized-osaka colors for Tmux

set -g mode-style "fg=#268bd3,bg=#ede7d3"

set -g message-style "fg=#268bd3,bg=#ede7d3"
set -g message-command-style "fg=#268bd3,bg=#ede7d3"

set -g pane-border-style "fg=#ede7d3"
set -g pane-active-border-style "fg=#268bd3"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#268bd3,bg=#fdf5e2"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#cac4b5,bg=#268bd3,bold] #S #[fg=#268bd3,bg=#fdf5e2,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#fdf5e2,bg=#fdf5e2,nobold,nounderscore,noitalics]#[fg=#268bd3,bg=#fdf5e2] #{prefix_highlight} #[fg=#ede7d3,bg=#fdf5e2,nobold,nounderscore,noitalics]#[fg=#268bd3,bg=#ede7d3] %Y-%m-%d  %I:%M %p #[fg=#268bd3,bg=#ede7d3,nobold,nounderscore,noitalics]#[fg=#cac4b5,bg=#268bd3,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#fdf5e2,bg=#fdf5e2,nobold,nounderscore,noitalics]#[fg=#268bd3,bg=#fdf5e2] #{prefix_highlight} #[fg=#ede7d3,bg=#fdf5e2,nobold,nounderscore,noitalics]#[fg=#268bd3,bg=#ede7d3] %Y-%m-%d  %H:%M #[fg=#268bd3,bg=#ede7d3,nobold,nounderscore,noitalics]#[fg=#cac4b5,bg=#268bd3,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#637981,bg=#fdf5e2"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#637981,bg=#fdf5e2"
setw -g window-status-format "#[fg=#fdf5e2,bg=#fdf5e2,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#fdf5e2,bg=#fdf5e2,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#fdf5e2,bg=#ede7d3,nobold,nounderscore,noitalics]#[fg=#268bd3,bg=#ede7d3,bold] #I  #W #F #[fg=#ede7d3,bg=#fdf5e2,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#b28500]#[bg=#fdf5e2]#[fg=#fdf5e2]#[bg=#b28500]"
set -g @prefix_highlight_output_suffix ""
