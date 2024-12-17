local M = {}

function M.get(c, opts)
  return {
    MiniDepsChangeAdded = "diffAdded",
    MiniDepsChangeRemoved = "diffRemoved",
    MiniDepsHint = "DiagnosticHint",
    MiniDepsInfo = "DiagnosticInfo",
    MiniDepsMsgBreaking = "DiagnosticWarn",
    MiniDepsPlaceholder = "Comment",
    MiniDepsTitle = "Title",
    MiniDepsTitleError = "DiffDelete",
    MiniDepsTitleSame = "DiffText",
    MiniDepsTitleUpdate = "DiffAdd",
  }
end

return M
