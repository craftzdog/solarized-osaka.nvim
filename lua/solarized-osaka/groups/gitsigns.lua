local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    GitSignsAdd    = { fg = c.green500 }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.yellow500 }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.red500 }, -- diff mode: Deleted line |diff.txt|
  }
end

return M
