local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    NoiceCompletionItemKindDefault = { fg = c.base01, bg = c.none },
  }
end

return M
