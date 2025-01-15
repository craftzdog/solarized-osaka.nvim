local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    SnacksDashboardDesc       = { fg = c.cyan500 },
    SnacksDashboardKey        = { fg = c.orange500 },
    SnacksDashboardFooter     = { fg = c.yellow, italic = true },
    SnacksDashboardSpecial    = { fg = c.yellow500 },
    SnacksDashboardHeader     = { fg = c.blue },
    SnacksDashboardIcon       = { fg = c.cyan500, bold = true },
    SnacksNotifierBorderTrace = { fg = c.magenta500 },
    SnacksNotifierIconTrace   = { fg = c.magenta500 },
    SnacksNotifierTitleTrace  = { fg = c.magenta500 },
    SnacksIndentScope         = { fg = c.violet700, nocombine = true },
    SnacksIndent              = { fg = c.base03, nocombine = true },
    SnacksPickerBorder        = { fg = c.base02, bg = c.bg_float },
    SnacksPickerTitle         = "Title",
    SnacksPickerPreviewTitle  = { fg = c.blue, bg = c.bg_float },
  }
end

return M
