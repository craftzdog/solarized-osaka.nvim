local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniTestEmphasis = { bold = true },
    MiniTestFail     = { fg = c.red, bold = true },
    MiniTestPass     = { fg = c.green, bold = true },
  }
end

return M
