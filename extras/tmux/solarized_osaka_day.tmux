#!/usr/bin/env bash

# solarized-osaka colors for Tmux

set -g mode-style "fg=#1c6da7,bg=#41d7fc"

set -g message-style "fg=#1c6da7,bg=#41d7fc"
set -g message-command-style "fg=#1c6da7,bg=#41d7fc"

set -g pane-border-style "fg=#41d7fc"
set -g pane-active-border-style "fg=#1c6da7"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#1c6da7,bg=#87ddff"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#e2f8ff,bg=#1c6da7,bold] #S #[fg=#1c6da7,bg=#87ddff,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#87ddff,bg=#87ddff,nobold,nounderscore,noitalics]#[fg=#1c6da7,bg=#87ddff] #{prefix_highlight} #[fg=#41d7fc,bg=#87ddff,nobold,nounderscore,noitalics]#[fg=#1c6da7,bg=#41d7fc] %Y-%m-%d  %I:%M %p #[fg=#1c6da7,bg=#41d7fc,nobold,nounderscore,noitalics]#[fg=#e2f8ff,bg=#1c6da7,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#87ddff,bg=#87ddff,nobold,nounderscore,noitalics]#[fg=#1c6da7,bg=#87ddff] #{prefix_highlight} #[fg=#41d7fc,bg=#87ddff,nobold,nounderscore,noitalics]#[fg=#1c6da7,bg=#41d7fc] %Y-%m-%d  %H:%M #[fg=#1c6da7,bg=#41d7fc,nobold,nounderscore,noitalics]#[fg=#e2f8ff,bg=#1c6da7,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#737d7e,bg=#87ddff"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#737d7e,bg=#87ddff"
setw -g window-status-format "#[fg=#87ddff,bg=#87ddff,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#87ddff,bg=#87ddff,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#87ddff,bg=#41d7fc,nobold,nounderscore,noitalics]#[fg=#1c6da7,bg=#41d7fc,bold] #I  #W #F #[fg=#41d7fc,bg=#87ddff,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#7e5d00]#[bg=#87ddff]#[fg=#87ddff]#[bg=#7e5d00]"
set -g @prefix_highlight_output_suffix ""
