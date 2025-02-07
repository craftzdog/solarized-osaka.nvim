    # solarized-osaka Color Palette
    set -l foreground 566162
    set -l selection 2c96e2
    set -l base01 6e8992
    set -l red e73330
    set -l orange d14f17
    set -l yellow 7e5d00
    set -l green 576600
    set -l purple 696dc2
    set -l cyan 279a91
    set -l pink d73884

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

  