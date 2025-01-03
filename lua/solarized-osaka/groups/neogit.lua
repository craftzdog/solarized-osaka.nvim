local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    NeogitBranch               = { fg = c.magenta500 },
    NeogitRemote               = { fg = c.violet500 },
    NeogitHunkHeader           = { fg = c.base0, bg = c.base02 },
    NeogitHunkHeaderHighlight  = { fg = c.blue500, bg = c.base02 },
    NeogitDiffContextHighlight = { fg = c.base00, bg = c.base02 },
    NeogitDiffDeleteHighlight  = { fg = c.red500, bg = c.red900 },
    NeogitDiffAddHighlight     = { fg = c.green500, bg = c.green900 },
  }
end

return M
