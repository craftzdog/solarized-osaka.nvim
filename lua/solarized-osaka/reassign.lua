local M = {}

function M.setup(colors)
  -- Additional color assignments
  -- colors.fg_sidebar = colors.base0
  -- colors.fg_gutter = colors.base01
  -- colors.bg_visual = colors.blue700
  -- colors.green1 = colors.green500
  -- colors.dark3 = colors.base02
  -- colors.fg_dark = colors.base0
  colors.bg_dark = colors.base03
  colors.terminal_black = colors.bg
  colors.red1 = colors.red300
  colors.comment = colors.base01
  colors.purple = colors.violet500

  -- Blue variants (using different intensities for visual hierarchy)
  colors.blue2 = colors.blue300 -- Lighter blue for secondary elements
  colors.blue5 = colors.blue700 -- Darker blue for emphasis
  colors.blue6 = colors.blue900 -- Deepest blue for strong emphasis

  colors.green2 = colors.green300 -- Lighter green for secondary indicators

  -- Git status colors
  colors.git = {
    add = colors.green500, -- Using green for additions
    delete = colors.red500, -- Using red for deletions
    change = colors.blue500, -- Using blue for modifications
  }

  -- Diff colors
  colors.diff = {
    delete = colors.red500,
    add = colors.green500,
  }

  -- Delta colors (for diff viewing)
  colors.delta = {
    delete = colors.red700, -- Slightly darker red for better contrast in diffs
    add = colors.green700, -- Slightly darker green for better contrast in diffs
  }

  -- Git signs colors
  colors.gitSigns = {
    delete = colors.red300, -- Lighter red for less intrusive indicators
    add = colors.green300, -- Lighter green for less intrusive indicators
  }

  return colors
end

return M
