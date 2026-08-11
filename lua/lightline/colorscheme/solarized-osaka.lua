local colors = require("solarized-osaka.colors").setup({ transform = true })

local solarized_osaka = {}

solarized_osaka.normal = {
  left = { { colors.base04, colors.blue }, { colors.blue, colors.base02 } },
  middle = { { colors.fg, colors.bg_statusline } },
  right = { { colors.base04, colors.blue }, { colors.base02, colors.base1 } },
  error = { { colors.base04, colors.error } },
  warning = { { colors.base04, colors.warning } },
}

solarized_osaka.insert = {
  left = { { colors.base04, colors.green }, { colors.blue, colors.base02 } },
}

solarized_osaka.visual = {
  left = { { colors.base04, colors.magenta }, { colors.blue, colors.base02 } },
}

solarized_osaka.replace = {
  left = { { colors.base04, colors.red }, { colors.blue, colors.base02 } },
}

solarized_osaka.inactive = {
  left = { { colors.blue, colors.bg_statusline }, { colors.fg, colors.base02 } },
  middle = { { colors.base02, colors.bg_statusline } },
  right = { { colors.base02, colors.bg_statusline }, { colors.fg, colors.base02 } },
}

solarized_osaka.tabline = {
  left = { { colors.fg, colors.bg_highlight }, { colors.fg, colors.base02 } },
  middle = { { colors.base02, colors.bg_statusline } },
  right = { { colors.base02, colors.bg_statusline }, { colors.fg, colors.base02 } },
  tabsel = { { colors.blue, colors.base02 }, { colors.fg, colors.base02 } },
}

return solarized_osaka
