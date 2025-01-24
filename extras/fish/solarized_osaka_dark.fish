    # solarized-osaka Color Palette
    set -l foreground 839395
    set -l selection 1a6397
    set -l base01 576d74
    set -l red db302d
    set -l orange c94c16
    set -l yellow b28500
    set -l green 849900
    set -l purple 6d71c4
    set -l cyan 29a298
    set -l pink d23681

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

  