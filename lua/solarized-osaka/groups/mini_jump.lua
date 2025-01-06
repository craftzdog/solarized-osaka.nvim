local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniJump             = { bg = c.magenta500, fg = c.base4 },
    MiniJump2dDim        = { fg = c.base01 },
    MiniJump2dSpot       = { fg = c.magenta500, bold = true, nocombine = true },
    MiniJump2dSpotAhead  = { fg = c.cyan500, bg = c.black, nocombine = true },
    MiniJump2dSpotUnique = { fg = c.yellow500, bold = true, nocombine = true },
  }
end

return M
