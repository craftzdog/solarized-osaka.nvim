#!/usr/bin/env bash

# solarized-osaka colors for Tmux

set -g mode-style "fg=#268bd3,bg=#063540"

set -g message-style "fg=#268bd3,bg=#063540"
set -g message-command-style "fg=#268bd3,bg=#063540"

set -g pane-border-style "fg=#063540"
set -g pane-active-border-style "fg=#268bd3"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#268bd3,bg=#002c38"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#001014,bg=#268bd3,bold] #S #[fg=#268bd3,bg=#002c38,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#002c38,bg=#002c38,nobold,nounderscore,noitalics]#[fg=#268bd3,bg=#002c38] #{prefix_highlight} #[fg=#063540,bg=#002c38,nobold,nounderscore,noitalics]#[fg=#268bd3,bg=#063540] %Y-%m-%d  %I:%M %p #[fg=#268bd3,bg=#063540,nobold,nounderscore,noitalics]#[fg=#001014,bg=#268bd3,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#002c38,bg=#002c38,nobold,nounderscore,noitalics]#[fg=#268bd3,bg=#002c38] #{prefix_highlight} #[fg=#063540,bg=#002c38,nobold,nounderscore,noitalics]#[fg=#268bd3,bg=#063540] %Y-%m-%d  %H:%M #[fg=#268bd3,bg=#063540,nobold,nounderscore,noitalics]#[fg=#001014,bg=#268bd3,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#9eabac,bg=#002c38"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#9eabac,bg=#002c38"
setw -g window-status-format "#[fg=#002c38,bg=#002c38,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#002c38,bg=#002c38,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#002c38,bg=#063540,nobold,nounderscore,noitalics]#[fg=#268bd3,bg=#063540,bold] #I  #W #F #[fg=#063540,bg=#002c38,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#b28500]#[bg=#002c38]#[fg=#002c38]#[bg=#b28500]"
set -g @prefix_highlight_output_suffix ""
