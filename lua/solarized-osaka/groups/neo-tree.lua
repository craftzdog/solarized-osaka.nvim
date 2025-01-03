local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    NeoTreeNormal   = { fg = c.base00, bg = c.bg_sidebar },
    NeoTreeNormalNC = { fg = c.base00, bg = c.bg_sidebar },
    NeoTreeDimText  = { fg = c.base01 },
    NeoTreeMessage  = { fg = c.base01 },
  }
end

return M
