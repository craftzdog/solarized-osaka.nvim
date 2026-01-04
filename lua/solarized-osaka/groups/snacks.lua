local M = {}

-- Require util
local Util = require("solarized-osaka.util")

function M.get(c, opts)
  -- stylua: ignore
  return {
    -- Notifier
    SnacksNotifierDebug           = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderDebug     = { fg = Util.blend(c.base01, c.bg, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconDebug       = { fg = c.base01 },
    SnacksNotifierTitleDebug      = { fg = c.base01 },
    SnacksNotifierError           = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderError     = { fg = Util.blend(c.red500, c.bg, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconError       = { fg = c.red500 },
    SnacksNotifierTitleError      = { fg = c.red500 },
    SnacksNotifierInfo            = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderInfo      = { fg = Util.blend(c.blue500, c.bg, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconInfo        = { fg = c.blue500 },
    SnacksNotifierTitleInfo       = { fg = c.blue500 },
    SnacksNotifierTrace           = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderTrace     = { fg = Util.blend(c.magenta500, c.bg, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconTrace       = { fg = c.magenta500 },
    SnacksNotifierTitleTrace      = { fg = c.magenta500 },
    SnacksNotifierWarn            = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderWarn      = { fg = Util.blend(c.yellow500, c.bg, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconWarn        = { fg = c.yellow500 },
    SnacksNotifierTitleWarn       = { fg = c.yellow500 },
    -- Dashboard
    SnacksDashboardDesc           = { fg = c.cyan500 },
    SnacksDashboardFooter         = { fg = c.yellow, italic = true },
    SnacksDashboardHeader         = { fg = c.blue500 },
    SnacksDashboardIcon           = { fg = c.cyan500, bold = true },
    SnacksDashboardKey            = { fg = c.orange500 },
    SnacksDashboardSpecial        = { fg = c.yellow500 },
    SnacksDashboardDir            = { fg = c.base01 },
    -- Profiler
    SnacksProfilerIconInfo        = { bg = Util.blend(c.blue500, c.bg, 0.3), fg = c.blue500 },
    SnacksProfilerBadgeInfo       = { bg = Util.blend(c.blue500, c.bg, 0.1), fg = c.blue500 },
    SnacksFooterKey               = "SnacksProfilerIconInfo",
    SnacksFooterDesc              = "SnacksProfilerBadgeInfo",
    SnacksProfilerIconTrace       = { bg = Util.blend(c.violet500, c.bg, 0.3), fg = c.base01 },
    SnacksProfilerBadgeTrace      = { bg = Util.blend(c.violet500, c.bg, 0.1), fg = c.base01 },
    -- Indent Scope
    SnacksIndent                  = { fg = c.base03, nocombine = true },
    SnacksIndentScope             = { fg = c.violet700, nocombine = true },
    -- Zen mode
    SnacksZenIcon                 = { fg = c.violet500 },
    -- Input
    SnacksInputIcon               = { fg = c.blue500 },
    SnacksInputBorder             = { fg = c.yellow500 },
    SnacksInputTitle              = { fg = c.yellow500 },
    -- Picker
    SnacksPickerInputBorder       = { fg = c.orange500, bg = c.bg_float },
    SnacksPickerInputTitle        = { fg = c.orange500, bg = c.bg_float },
    SnacksPickerBoxTitle          = { fg = c.orange500, bg = c.bg_float },
    SnacksPickerSelected          = { fg = c.magenta500 },
    SnacksPickerToggle            = "SnacksProfilerBadgeInfo",
    SnacksPickerPickWinCurrent    = { fg = c.fg, bg = c.magenta300, bold = true },
    SnacksPickerPickWin           = { fg = c.fg, bg = c.base02, bold = true },
    SnacksPickerBorder            = { fg = c.base02, bg = c.bg_float },
    SnacksPickerTitle             = "Title",
    SnacksPickerPreviewTitle      = { fg = c.blue500, bg = c.bg_float },
    SnacksGhLabel                 = { fg = c.blue500, bold = true },
    SnacksGhDiffHeader            = { bg = Util.blend(c.blue500, c.bg, 0.1), fg = c.blue500 },
  }
end

return M
