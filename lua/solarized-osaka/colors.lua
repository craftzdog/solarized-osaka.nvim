local util = require("solarized-osaka.util")
local hslutil = require("solarized-osaka.hsl")
local hsl = hslutil.hslToHex

local M = {}

---@class Palette
M.default = {
  none = "NONE",

  base04 = hsl(192, 100, 5),
  base03 = hsl(192, 100, 11),
  base02 = hsl(192, 81, 14),
  base01 = hsl(194, 14, 40),
  base00 = hsl(196, 13, 45),
  -- base0 = hsl( 186, 8, 55 ),
  base0 = hsl(186, 8, 65),
  -- base1 = hsl( 180, 7, 60 ),
  base1 = hsl(180, 7, 70),
  base2 = hsl(46, 42, 88),
  base3 = hsl(44, 87, 94),
  base4 = hsl(0, 0, 100),
  yellow = hsl(45, 100, 35),
  yellow100 = hsl(47, 100, 80),
  yellow300 = hsl(45, 100, 50),
  yellow500 = hsl(45, 100, 35),
  yellow700 = hsl(45, 100, 20),
  yellow900 = hsl(46, 100, 10),
  orange = hsl(18, 80, 44),
  orange100 = hsl(17, 100, 70),
  orange300 = hsl(17, 94, 51),
  orange500 = hsl(18, 80, 44),
  orange700 = hsl(18, 81, 35),
  orange900 = hsl(18, 80, 20),
  red = hsl(1, 71, 52),
  red100 = hsl(1, 100, 80),
  red300 = hsl(1, 90, 64),
  red500 = hsl(1, 71, 52),
  red700 = hsl(1, 71, 42),
  red900 = hsl(1, 71, 20),
  magenta = hsl(331, 64, 52),
  magenta100 = hsl(331, 100, 73),
  magenta300 = hsl(331, 86, 64),
  magenta500 = hsl(331, 64, 52),
  magenta700 = hsl(331, 64, 42),
  magenta900 = hsl(331, 65, 20),
  violet = hsl(237, 43, 60),
  violet100 = hsl(236, 100, 90),
  violet300 = hsl(237, 69, 77),
  violet500 = hsl(237, 43, 60),
  violet700 = hsl(237, 43, 50),
  violet900 = hsl(237, 42, 25),
  blue = hsl(205, 69, 49),
  blue100 = hsl(205, 100, 83),
  blue300 = hsl(205, 90, 62),
  blue500 = hsl(205, 69, 49),
  blue700 = hsl(205, 70, 35),
  blue900 = hsl(205, 69, 20),
  cyan = hsl(175, 59, 40),
  cyan100 = hsl(176, 100, 86),
  cyan300 = hsl(175, 85, 55),
  cyan500 = hsl(175, 59, 40),
  cyan700 = hsl(182, 59, 25),
  cyan900 = hsl(183, 58, 15),
  green = hsl(68, 100, 30),
  green100 = hsl(90, 100, 84),
  green300 = hsl(76, 100, 49),
  green500 = hsl(68, 100, 30),
  green700 = hsl(68, 100, 20),
  green900 = hsl(68, 100, 10),

  bg = hsl(192, 100, 5),
  bg_highlight = hsl(192, 100, 11),
  fg = hsl(186, 8, 55),
}

-- Solarized Light/Day official palette
---@class Palette
M.day = {
  none = "NONE",

  -- Official Solarized Light base colors (swapped from dark)
  base04 = "#fdf6e3", -- base3 (lightest background)
  base03 = "#eee8d5", -- base2 (highlighted background)
  base02 = "#93a1a1", -- base1 (comments/secondary content)
  base01 = "#839496", -- base0 (body text/default code)
  base00 = "#657b83", -- base00 (primary content)
  base0 = "#586e75",  -- base01 (optional emphasized content)
  base1 = "#073642",  -- base02 (background highlights)
  base2 = "#002b36",  -- base03 (darkest for special use)
  base3 = "#002b36",  -- base03
  base4 = "#fdf6e3",  -- base3

  -- Official Solarized accent colors (same for light/dark)
  yellow = "#b58900",
  yellow100 = "#f5e6b3",
  yellow300 = "#ddb76f",
  yellow500 = "#b58900",
  yellow700 = "#8a6900",
  yellow900 = "#5f4900",
  
  orange = "#cb4b16",
  orange100 = "#f7c5a8",
  orange300 = "#e27847",
  orange500 = "#cb4b16",
  orange700 = "#9e3a11",
  orange900 = "#6f280b",
  
  red = "#dc322f",
  red100 = "#f9b3b1",
  red300 = "#e7625f",
  red500 = "#dc322f",
  red700 = "#aa2824",
  red900 = "#781c19",
  
  magenta = "#d33682",
  magenta100 = "#f7b3d8",
  magenta300 = "#e467a3",
  magenta500 = "#d33682",
  magenta700 = "#a52a66",
  magenta900 = "#761d4a",
  
  violet = "#6c71c4",
  violet100 = "#d5d7f2",
  violet300 = "#9fa3db",
  violet500 = "#6c71c4",
  violet700 = "#545899",
  violet900 = "#3c3f6d",
  
  blue = "#268bd2",
  blue100 = "#b3d9f2",
  blue300 = "#62afe5",
  blue500 = "#268bd2",
  blue700 = "#1e6ca3",
  blue900 = "#154c75",
  
  cyan = "#2aa198",
  cyan100 = "#b3e5e2",
  cyan300 = "#5ec4bc",
  cyan500 = "#2aa198",
  cyan700 = "#207d76",
  cyan900 = "#175854",
  
  green = "#859900",
  green100 = "#dfe8b3",
  green300 = "#b1c35f",
  green500 = "#859900",
  green700 = "#677700",
  green900 = "#495400",

  bg = "#fdf6e3",      -- base3
  bg_highlight = "#eee8d5", -- base2
  fg = "#657b83",      -- base00
}

---@return ColorScheme
function M.setup(opts)
  opts = opts or {}
  local config = require("solarized-osaka.config")

  -- Use 'day' palette for light mode, 'default' for dark mode
  local style = config.is_day() and "day" or "default"
  local palette = M[style] or {}
  if type(palette) == "function" then
    palette = palette()
  end

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = vim.tbl_deep_extend("force", vim.deepcopy(M[style]), palette)

  util.bg = colors.bg
  util.day_brightness = config.options.day_brightness

  colors.black = config.is_day() and util.lighten(colors.bg, 0.8, "#ffffff") or util.darken(colors.bg, 0.8, "#000000")
  colors.border = colors.black

  -- Popups and statusline background
  colors.bg_popup = colors.base04
  colors.bg_statusline = colors.base03

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = config.options.styles.sidebars == "transparent" and colors.none
    or config.options.styles.sidebars == "dark" and colors.base04
    or colors.bg

  colors.bg_float = config.options.styles.floats == "transparent" and colors.none
    or config.options.styles.floats == "dark" and colors.base04
    or colors.bg

  -- colors.fg_float = config.options.styles.floats == "dark" and colors.base01 or colors.fg
  colors.fg_float = colors.fg

  colors.error = colors.red500
  colors.warning = colors.yellow500
  colors.info = colors.blue500
  colors.hint = colors.cyan500
  colors.todo = colors.violet500

  config.options.on_colors(colors)
  -- Do not invert colors - we have separate palettes for day/night

  return colors
end

return M
