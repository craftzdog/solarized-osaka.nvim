local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  colors.dark5 = colors.base02
  local aerc = util.template(
    [[
# vim: ft=dosini
#
# aerc solarized-osaka styleset
# set styleset-name=solarized-osaka-xxx.ini in 'aerc.conf' to load the style
#

*.default=true
*.normal=true

border.fg=${base01}
border.bg=${bg}

title.fg=${black}
title.bg=${blue}
title.bold=true

header.fg=${red}
#header.bg=${bg}
header.bold=true

tab.fg=${base01}
tab.bg=${bg_statusline}
tab.selected.fg=${black}
tab.selected.bg=${blue}

statusline_default.fg=${fg}
statusline_default.bg=${base03}
statusline_error.fg=${error}
statusline_success.fg=${green500}

*error.bold=true
*error.fg=${error}
*warning.fg=${warning}
*success.fg=${green500}

dirlist_*.bg=${bg}
dirlist_*.fg=${fg}
dirlist_*.selected.bg=${blue700}
dirlist_*.selected.fg=${fg}

msglist_*.bg=${bg}
msglist_*.fg=${fg}
msglist_*.selected.bg=${blue700}
#msglist_*.selected.fg=${fg}
msglist_unread.bold=true
msglist_unread.fg=${blue}
msglist_marked.fg=${orange}
msglist_thread_folded.italic=true
msglist_thread_folded.underline=true
msglist_gutter.bg=${bg_highlight}
msglist_pill.bg=${base01}
msglist_pill.reverse=false

part_*.fg=${fg}
part_*.bg=${bg_popup}
part_*.selected.fg=${fg}
part_*.selected.bg=${base01}

completion_default.bg=${bg_popup}
completion_default.fg=${fg}
completion_default.selected.bg=${base01}
completion_default.selected.fg=${fg}
completion_gutter.bg=${bg_highlight}
completion_pill.bg=${base01}
completion_pill.reverse=false

spinner.bg=${bg}
spinner.fg=${fg}

selector_focused.bold=false
selector_focused.bg=${blue700}
selector_focused.fg=${fg}
selector_chooser.bold=false
selector_chooser.bg=${blue700}
selector_chooser.fg=${fg}
default.selected.bold=false
default.selected.fg=${fg}
default.selected.bg=${blue700}

[viewer]
url.underline=true
url.fg=${dark5}
header.fg=${violet500}
signature.fg=${magenta}
diff_add.fg=${green500}
diff_del.fg=${red500}
diff_meta.bold=true
diff_chunk.dim=true
quote_1.fg=${yellow}
quote_2.fg=${green}
quote_3.fg=${cyan}
quote_3.dim=true
quote_4.fg=${blue}
quote_4.dim=true
quote_x.fg=${base01}
quote_x.dim=true

]],
    colors
  )

  return aerc
end

return M
