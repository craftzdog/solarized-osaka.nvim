local M = {}

function M.get(c, opts)
  return {
    MiniPickBorder = "FloatBorder",
    MiniPickBorderBusy = "DiagnosticFloatingWarn",
    MiniPickBorderText = "FloatTitle",
    MiniPickHeader = "DiagnosticFloatingHint",
    MiniPickIconDirectory = "Directory",
    MiniPickIconFile = "MiniPickNormal",
    MiniPickMatchCurrent = "CursorLine",
    MiniPickMatchMarked = "Visual",
    MiniPickMatchRanges = "DiagnosticFloatingHint",
    MiniPickNormal = "NormalFloat",
    MiniPickPreviewLine = "CursorLine",
    MiniPickPreviewRegion = "IncSearch",
    MiniPickPrompt = "DiagnosticFloatingInfo",
  }
end

return M
