local colors = require("solarized-osaka.colors").setup({ transform = true })
local config = require("solarized-osaka.config").options

local solarized_osaka = {}

solarized_osaka.normal = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = colors.base0, fg = colors.base04 },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

solarized_osaka.insert = {
  a = { bg = colors.green, fg = colors.black },
}

solarized_osaka.command = {
  a = { bg = colors.yellow, fg = colors.black },
}

solarized_osaka.visual = {
  a = { bg = colors.magenta, fg = colors.black },
}

solarized_osaka.replace = {
  a = { bg = colors.red, fg = colors.black },
}

solarized_osaka.terminal = {
  a = { bg = colors.green, fg = colors.black },
}

solarized_osaka.inactive = {
  a = {
    bg = config.hide_inactive_statusline and colors.none or colors.bg_statusline,
    fg = config.hide_inactive_statusline and colors.bg or colors.blue,
    sp = config.hide_inactive_statusline and colors.border or colors.none,
    underline = config.hide_inactive_statusline,
  },
  b = {
    bg = config.hide_inactive_statusline and colors.none or colors.bg_statusline,
    fg = config.hide_inactive_statusline and colors.bg or colors.fg,
    sp = config.hide_inactive_statusline and colors.border or colors.none,
    underline = config.hide_inactive_statusline,
    gui = "bold",
  },
  c = {
    bg = config.hide_inactive_statusline and colors.none or colors.bg_statusline,
    fg = config.hide_inactive_statusline and colors.bg or colors.fg,
    sp = config.hide_inactive_statusline and colors.border or colors.none,
    underline = config.hide_inactive_statusline,
  },
}

if config.lualine_bold then
  for _, mode in pairs(solarized_osaka) do
    mode.a.gui = "bold"
  end
end

return solarized_osaka
