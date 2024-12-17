local util = require("solarized-osaka.util")

local M = {}

function M.setup()
  local colors = require("solarized-osaka.colors").setup()
  local opts = require("solarized-osaka.config").options
  local groups = require("solarized-osaka.groups").setup(colors, opts)

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "solarized-osaka"

  for group, hl in pairs(groups) do
    hl = type(hl) == "string" and { link = hl } or hl
    vim.api.nvim_set_hl(0, group, hl)
  end

  if opts.terminal_colors then
    M.terminal(colors)
  end

  -- if options.hide_inactive_statusline then
  --   local inactive = { underline = true, bg = c.none, fg = c.bg, sp = c.border }
  --
  --   -- StatusLineNC
  --   theme.highlights.StatusLineNC = inactive
  --
  --   -- LuaLine
  --   for _, section in ipairs({ "a", "b", "c" }) do
  --     theme.defer["lualine_" .. section .. "_inactive"] = inactive
  --   end
  --
  --   -- mini.statusline
  --   theme.highlights.MiniStatuslineInactive = inactive
  -- end

  -- options.on_highlights(theme.highlights, theme.colors)

  return colors, groups, opts
end
---@param colors ColorScheme
function M.terminal(colors)
  -- dark
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_8 = colors.terminal_black

  -- light
  vim.g.terminal_color_7 = colors.fg_dark
  vim.g.terminal_color_15 = colors.fg

  -- colors
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_9 = colors.red

  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_10 = colors.green

  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_11 = colors.yellow

  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_12 = colors.blue

  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_13 = colors.magenta

  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_14 = colors.cyan
end
return M
