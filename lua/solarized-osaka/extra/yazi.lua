local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  colors.bg_search = colors.yellow700
  colors.border_highlight = colors.base02
  local yazi = util.template(
    [[
[manager]
# NOTE: can combined with tmTheme (sublime colorshceme file) for preview code highlight
# syntect_theme = "path/to/tmTheme"

cwd = { fg = "${base0}", italic = true }

# Hovered
hovered         = { bg = "${bg_highlight}" }
preview_hovered = { bg = "${bg_highlight}" }

# Find
find_keyword  = { fg = "${base03}", bg = "${orange}", bold = true }
find_position = { fg = "${blue300}", bg = "${bg_search}", bold = true }

# Marker
marker_copied   = { fg = "${green500}", bg = "${green500}" }
marker_cut      = { fg = "${red}", bg = "${red}" }
marker_marked   = { fg = "${magenta}", bg = "${magenta}" }
marker_selected = { fg = "${blue}", bg = "${blue}" }

# Tab
tab_active   = { fg = "${fg}", bg = "${bg_highlight}" }
tab_inactive = { fg = "${base01}", bg = "${bg}" }
tab_width    = 1

# Count
count_copied   = { fg = "${fg}", bg = "${green300}" }
count_cut      = { fg = "${fg}", bg = "${red300}" }
count_selected = { fg = "${fg}", bg = "${blue700}" }

# Border
border_symbol = "│"
border_style  = { fg = "${border_highlight}" }

[mode]
normal_main = { fg = "${black}", bg = "${blue}", bold = true }
normal_alt  = { fg = "${blue}", bg = "${base01}" }

select_main = { fg = "${black}", bg = "${magenta}", bold = true }
select_alt  = { fg = "${magenta}", bg = "${base01}" }

unset_main  = { fg = "${black}", bg = "${violet500}", bold = true }
unset_alt   = { fg = "${violet500}", bg = "${base01}" }

[status]
separator_open    = ""
separator_close   = ""
# separator_style = { fg = "${base01}", bg = "${base01}" }

# Progress
progress_label  = { fg = "${base0}", bold = true }
progress_normal = { fg = "${bg}" }
progress_error  = { fg = "${red}" }

# Permissions
perm_type  = { fg = "${blue}" }
perm_read  = { fg = "${yellow}" }
perm_write = { fg = "${red}" }
perm_exec  = { fg = "${green}" }
perm_sep   = { fg = "${bg}" }

[pick]
border   = { fg = "${border_highlight}" }
active   = { fg = "${fg}",  bg = "${blue700}" }
inactive = { fg = "${fg}" }

# Input
[input]
border   = { fg = "${blue300}" }
title    = { fg = "${blue300}" }
value    = { fg = "${violet500}" }
selected = { bg = "${blue700}" }

# Completion
[completion]
border   = { fg = "${blue300}" }
active   = { fg = "${fg}", bg = "${blue700}" }
inactive = { fg = "${fg}" }

icon_file    = ""
icon_folder  = ""
icon_command = ""

# Tasks
[tasks]
border  = { fg = "${border_highlight}" }
title   = { fg = "${border_highlight}" }
hovered = { fg = "${fg}", bg="${blue700}" }

# Which
[which]
cols            = 3
mask            = { bg = "${base03}" }
cand            = { fg = "${cyan}" }
rest            = { fg = "${blue}" }
desc            = { fg = "${magenta}" }
separator       = " ➜ "
separator_style = { fg = "${base01}" }

# Confirm
[confirm]
border  = { fg = "${blue300}" }
title   = { fg = "${border_highlight}" }
content = {}
list    = {}
btn_yes = { bg = "${blue700}" }
btn_no  = {}
btn_labels = [ "  [Y]es  ", "  (N)o  " ]

# Spot
[spot]
border  = { fg = "${border_highlight}" }
title   = { fg = "${border_highlight}" }

# Notify
[notify]
title_info  = { fg = "${info}" }
title_warn  = { fg = "${warning}" }
title_error = { fg = "${error}" }

icon_error = ""
icon_warn = ""
icon_info = ""

# Help
[help]
on      = { fg = "${green}" }
run     = { fg = "${magenta}" }
hovered = { bg = "${bg_highlight}" }
footer  = { fg = "${fg}", bg = "${bg}" }

[filetype]

rules = [
	# Images
	{ mime = "image/*", fg = "${yellow}" },

	# Media
	{ mime = "{audio,video}/*", fg = "${magenta}" },

	# Archives
	{ mime = "application/*zip", fg = "${red}" },
	{ mime = "application/x-{tar,bzip*,7z-compressed,xz,rar}", fg = "${red}" },

	# Documents
	{ mime = "application/{pdf,doc,rtf,vnd.*}", fg = "${cyan}" },

	# Empty files
	# { mime = "inode/x-empty", fg = "${red}" },

	# Special files
	{ name = "*", is = "orphan", bg = "${red}" },
	{ name = "*", is = "exec"  , fg = "${green}" },

	# Fallback
	{ name = "*/", fg = "${blue}" }
]
    ]],
    colors
  )
  return yazi
end

return M
