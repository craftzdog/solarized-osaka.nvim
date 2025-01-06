local Util = require("solarized-osaka.util")

local M = {}

-- stylua: ignore
M.plugins = {
  ["alpha-nvim"]                    = "alpha",
  ["barbar.nvim"]                   = "barbar",
  ["bufferline.nvim"]               = "bufferline",
  ["blink.cmp"]                     = "blink",
  ["dashboard-nvim"]                = "dashboard",
  ["flash.nvim"]                    = "flash",
  ["fzf-lua"]                       = "fzf",
  ["vim-fern"]                      = "fern",
  ["gitsigns.nvim"]                 = "gitsigns",
  ["hop.nvim"]                      = "hop",
  ["indent-blankline.nvim"]         = "indent-blankline",
  ["leap.nvim"]                     = "leap",
  ["lspsaga.nvim"]                  = "lspsaga",
  ["lightspeed"]                    = "lightspeed",
  ["mini.animate"]                  = "mini_animate",
  ["mini.clue"]                     = "mini_clue",
  ["mini.completion"]               = "mini_completion",
  ["mini.cursorword"]               = "mini_cursorword",
  ["mini.deps"]                     = "mini_deps",
  ["mini.diff"]                     = "mini_diff",
  ["mini.files"]                    = "mini_files",
  ["mini.hipatterns"]               = "mini_hipatterns",
  ["mini.icons"]                    = "mini_icons",
  ["mini.indentscope"]              = "mini_indentscope",
  ["mini.jump"]                     = "mini_jump",
  ["mini.map"]                      = "mini_map",
  ["mini.notify"]                   = "mini_notify",
  ["mini.operators"]                = "mini_operators",
  ["mini.pick"]                     = "mini_pick",
  ["mini.starter"]                  = "mini_starter",
  ["mini.statusline"]               = "mini_statusline",
  ["mini.surround"]                 = "mini_surround",
  ["mini.tabline"]                  = "mini_tabline",
  ["mini.test"]                     = "mini_test",
  ["mini.trailspace"]               = "mini_trailspace",
  ["neo-tree.nvim"]                 = "neo-tree",
  ["neogit"]                        = "neogit",
  ["neotest"]                       = "neotest",
  ["noice.nvim"]                    = "noice",
  ["nvim-cmp"]                      = "cmp",
  ["nvim-navic"]                    = "navic",
  ["nvim-notify"]                   = "notify",
  ["nvim-scrollbar"]                = "scrollbar",
  ["nvim-tree.lua"]                 = "nvim-tree",
  ["nvim-treesitter-context"]       = "treesitter-context",
  ["nvim-ts-rainbow"]               = "nvim-ts-rainbow",
  ["nvim-ts-rainbow2"]              = "nvim-ts-rainbow2",
  ["ts-node-action"]                = "ts-node-action",
  ["rainbow-delimiters.nvim"]       = "rainbow-delimiters",
  ["snacks.nvim"]                   = "snacks",
  ["telescope.nvim"]                = "telescope",
  ["trouble.nvim"]                  = "trouble",
  ["vim-gitgutter"]                 = "gitgutter",
  ["vim-glyph-palette"]             = "glyph-palette",
  ["vim-illuminate"]                = "illuminate",
  ["vim-sneak"]                     = "sneak",
  ["which-key.nvim"]                = "which-key",
  ["yanky.nvim"]                    = "yanky"
}

function M.get_group(name)
  return Util.mod("solarized-osaka.groups." .. name)
end

function M.get(name, colors, opts)
  local mod = M.get_group(name)
  return mod.get(colors, opts)
end

function M.setup(colors, opts)
  local groups = {
    editor = true,
    syntax = true,
    semantic_tokens = true,
    treesitter = true,
  }
  if opts.plugins.all then
    for _, group in pairs(M.plugins) do
      groups[group] = true
    end
  elseif opts.plugins.auto and package.loaded.lazy then
    local plugins = require("lazy.core.config").plugins
    for plugin, group in pairs(M.plugins) do
      if plugins[plugin] then
        groups[group] = true
      end
    end

    -- special case for mini.nvim
    if plugins["mini.nvim"] then
      for _, group in pairs(M.plugins) do
        if group:find("^mini_") then
          groups[group] = true
        end
      end
    end
  end

  -- manually enable/disable plugins
  for plugin, group in pairs(M.plugins) do
    local use = opts.plugins[group]
    use = use == nil and opts.plugins[plugin] or use
    if use ~= nil then
      if type(use) == "table" then
        use = use.enabled
      end
      groups[group] = use or nil
    end
  end

  local names = vim.tbl_keys(groups)
  table.sort(names)

  local ret = {}

  for group in pairs(groups) do
    for k, v in pairs(M.get(group, colors, opts)) do
      ret[k] = v
    end
  end

  Util.resolve(ret)

  opts.on_highlights(ret, colors)

  return ret, groups
end

return M
