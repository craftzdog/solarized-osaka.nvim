local M = {}

function M.get(c, opts)
  return {
    IblIndent = { fg = c.base03, nocombine = true },
    IndentBlanklineChar = { fg = c.base03, nocombine = true },
    IndentBlanklineContextChar = { fg = c.orange500, nocombine = true },
  }
end

return M
