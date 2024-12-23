local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    LightspeedGreyWash               = { fg = c.base01 },
    -- LightspeedCursor = { link = "Cursor" },
    LightspeedLabel                  = { fg = c.magenta500, bold = true, underline = true },
    LightspeedLabelDistant           = { fg = c.cyan, bold = true, underline = true },
    LightspeedLabelDistantOverlapped = { fg = c.cyan500, underline = true },
    LightspeedLabelOverlapped        = { fg = c.magenta500, underline = true },
    LightspeedMaskedChar             = { fg = c.orange },
    LightspeedOneCharMatch           = { bg = c.magenta500, fg = c.fg, bold = true },
    LightspeedPendingOpArea          = { bg = c.magenta500, fg = c.fg },
    LightspeedShortcut               = { bg = c.magenta500, fg = c.fg, bold = true, underline = true },
    -- LightspeedShortcutOverlapped = { link = "LightspeedShortcut" },
    -- LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
    LightspeedUnlabeledMatch         = { fg = c.violet500, bold = true },
  }
end

return M
