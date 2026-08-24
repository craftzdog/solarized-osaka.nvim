local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniDiffOverAdd     = "DiffAdd",
    MiniDiffOverChange  = "DiffText",
    MiniDiffOverContext = "DiffChange",
    MiniDiffOverDelete  = "DiffDelete",
    MiniDiffSignAdd     = { fg = c.cyan500 },
    MiniDiffSignChange  = { fg = c.yellow500 },
    MiniDiffSignDelete  = { fg = c.red500 },
  }
end

return M
