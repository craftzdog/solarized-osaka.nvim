local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    NvimTreeNormal       = { fg = c.base00, bg = c.bg_sidebar },
    NvimTreeWinSeparator = { fg = opts.styles.sidebars == "transparent" and c.border or c.bg_sidebar, bg = c.bg_sidebar },
    NvimTreeNormalNC     = { fg = c.base00, bg = c.bg_sidebar },
    NvimTreeRootFolder   = { fg = c.blue, bold = true },
    NvimTreeGitDirty     = { fg = c.yellow500 },
    NvimTreeGitNew       = { fg = c.green500 },
    NvimTreeGitDeleted   = { fg = c.red500 },
    NvimTreeOpenedFile   = { bg = c.bg_highlight },
    NvimTreeSpecialFile  = { fg = c.violet500, underline = true },
    NvimTreeIndentMarker = { fg = c.base02 },
    NvimTreeImageFile    = { fg = c.base00 },
    NvimTreeSymlink      = { fg = c.blue },
    NvimTreeFolderIcon   = { bg = c.none, fg = c.blue },
    -- NvimTreeFolderName= { fg = c.fg_float },
  }
end

return M
