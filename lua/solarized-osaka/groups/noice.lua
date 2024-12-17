local M = {}

function M.get(c, opts)
  return {
    NoiceCompletionItemKindDefault = { fg = c.base01, bg = c.none },
  }
end

return M
