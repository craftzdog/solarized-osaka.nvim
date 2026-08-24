local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniDiffOverAdd        = { bg = c.cyan900 },
    MiniDiffOverChange     = { bg = c.red800, bold = true },
    MiniDiffOverChangeBuf  = { bg = c.cyan700, bold = true },
    MiniDiffOverContext    = { bg = c.red950 },
    MiniDiffOverContextBuf = { bg = c.cyan900 },
    MiniDiffOverDelete     = { bg = c.red950 },
    MiniDiffSignAdd        = { fg = c.cyan500 },
    MiniDiffSignChange     = { fg = c.yellow500 },
    MiniDiffSignDelete     = { fg = c.red500 },
  }
end

return M
