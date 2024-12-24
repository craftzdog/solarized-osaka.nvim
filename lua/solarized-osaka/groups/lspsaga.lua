local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    DiagnosticWarning          = "DiagnosticWarn",
    DiagnosticInformation      = "DiagnosticInfo",
    LspFloatWinNormal          = { bg = c.bg_float },
    LspFloatWinBorder          = { fg = c.base02 },
    LspSagaBorderTitle         = { fg = c.cyan },
    LspSagaHoverBorder         = { fg = c.blue },
    LspSagaRenameBorder        = { fg = c.green },
    LspSagaDefPreviewBorder    = { fg = c.green },
    LspSagaCodeActionBorder    = { fg = c.blue },
    LspSagaFinderSelection     = { fg = c.base03 },
    LspSagaCodeActionTitle     = { fg = c.cyan },
    LspSagaCodeActionContent   = { fg = c.violet500 },
    LspSagaSignatureHelpBorder = { fg = c.red },
    ReferencesCount            = { fg = c.violet500 },
    DefinitionCount            = { fg = c.violet500 },
    DefinitionIcon             = { fg = c.blue },
    ReferencesIcon             = { fg = c.blue },
    TargetWord                 = { fg = c.cyan500 },
  }
end

return M
