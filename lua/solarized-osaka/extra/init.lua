local M = {}

-- Map of plugin name to plugin extension
--- @type table<string, {ext:string, url:string, label:string}>
-- stylua: ignore
M.extras = {
  aerc             = { ext = "ini", url = "https://git.sr.ht/~rjarry/aerc/", label = "Aerc" },
  alacritty        = { ext = "toml", url = "https://github.com/alacritty/alacritty", label = "Alacritty" },
  delta            = { ext = "gitconfig", url = "https://github.com/dandavison/delta", label = "Delta" },
  discord          = { ext = "css", url ="https://betterdiscord.app/", label = "(Better-)Discord"},
  dunst            = { ext = "dunstrc", url = "https://dunst-project.org/", label = "Dunst" },
  fish             = { ext = "fish", url = "https://fishshell.com/docs/current/index.html", label = "Fish" },
  fish_themes      = { ext = "theme", url = "https://fishshell.com/docs/current/interactive.html#syntax-highlighting", label = "Fish Themes" },
  foot             = { ext = "ini", url = "https://codeberg.org/dnkl/foot", label = "Foot" },
  fuzzel           = { ext = "ini", url = "https://codeberg.org/dnkl/fuzzel", label = "Fuzzel" },
  -- INFO: build script not working for this, headless mode doesn't seem to be assigning all the hl groups
  -- fzf              = { ext = "sh", url = "https://github.com/junegunn/fzf", label = "Fzf" },
  --
  ghostty          = { ext = "", url = "https://github.com/ghostty-org/ghostty", label = "Ghostty" },
  gitui            = { ext = "ron", url = "https://github.com/extrawurst/gitui", label = "GitUI" },
  gnome_terminal   = { ext = "dconf", url = "https://gitlab.gnome.org/GNOME/gnome-terminal", label = "GNOME Terminal" },
  helix            = { ext = "toml", url = "https://helix-editor.com/", label = "Helix" },
  -- BUG: not working
  -- iterm            = { ext = "itermcolors", url = "https://iterm2.com/", label = "iTerm" },
  --
  kitty            = { ext = "conf", url = "https://sw.kovidgoyal.net/kitty/conf.html", label = "Kitty" },
  lazygit          = { ext = "yml", url = "https://github.com/jesseduffield/lazygit", label = "Lazygit" },
  lua              = { ext = "lua", url = "https://www.lua.org", label = "Lua Table for testing" },
  prism            = { ext = "js", url = "https://prismjs.com", label = "Prism" },
  process_compose  = { ext = "yaml", url = "https://f1bonacc1.github.io/process-compose/", label = "process-compose" },
  slack            = { ext = "txt", url = "https://slack.com", label = "Slack" },
  sublime          = { ext = "tmTheme", url = "https://www.sublimetext.com/docs/themes", label = "Sublime Text" },
  spotify_player   = { ext = "toml", url = "https://github.com/aome510/spotify-player", label = "Spotify Player" },
  terminator       = { ext = "conf", url = "https://gnome-terminator.readthedocs.io/en/latest/config.html", label = "Terminator" },
  termux           = { ext = "properties", url = "https://termux.dev/", label = "Termux" },
  tilix            = { ext = "json", url = "https://github.com/gnunn1/tilix", label = "Tilix" },
  tmux             = { ext = "tmux", url = "https://github.com/tmux/tmux/wiki", label = "Tmux" },
  wezterm          = { ext = "toml", url = "https://wezfurlong.org/wezterm/config/files.html", label = "WezTerm" },
  windows_terminal = { ext = "json", url = "https://aka.ms/terminal-documentation", label = "Windows Terminal" },
  xfceterm         = { ext = "theme", url = "https://docs.xfce.org/apps/terminal/advanced", label = "Xfce Terminal" },
  xresources       = { ext = "Xresources", url = "https://wiki.archlinux.org/title/X_resources", label = "Xresources" },
  yazi             = { ext = "toml", url = "https://github.com/sxyazi/yazi", label = "Yazi" },
  -- BUG: not working
  -- vim              = { ext = "vim", url = "https://vimhelp.org/", label = "Vim", subdir = "colors", sep = "-" },
  --
  vimium           = { ext = "css", url = "https://vimium.github.io/", label = "Vimium" },
  zathura          = { ext = "zathurarc", url = "https://pwmt.org/projects/zathura/", label = "Zathura" },
  zellij           = { ext = "kdl", url = "https://zellij.dev/", label = "Zellij" },
}

local function write(str, fileName)
  local rootDir = vim.fs.root(0, ".git")
  local fullPath = rootDir .. "/extras/" .. fileName
  print("[write] " .. fullPath)
  vim.fn.mkdir(vim.fs.dirname(fullPath), "p")
  local file = io.open(fullPath, "w")
  if not file then
    error("Failed to open file: " .. fullPath)
  end
  file:write(str)
  file:close()
end

function M.read_file(file)
  local fd = assert(io.open(file, "r"))
  local data = fd:read("*a")
  fd:close()
  return data
end

function M.write_file(file, contents)
  local fd = assert(io.open(file, "w+"))
  fd:write(contents)
  fd:close()
end

function M.docs()
  local file = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h:h:h:h") .. "/README.md"
  local tag = "extras"
  local pattern = "(<%!%-%- " .. tag .. ":start %-%->).*(<%!%-%- " .. tag .. ":end %-%->)"
  local readme = M.read_file(file)
  local lines = {}
  local names = vim.tbl_keys(M.extras)
  table.sort(names)
  for _, name in ipairs(names) do
    local info = M.extras[name]
    table.insert(lines, "- [" .. info.label .. "](" .. info.url .. ") ([" .. name .. "](extras/" .. name .. "))")
  end
  readme = readme:gsub(pattern, "%1\n" .. table.concat(lines, "\n") .. "\n%2")
  M.write_file(file, readme)
end

function M.setup()
  M.docs()
  local config = require("solarized-osaka.config")
  vim.o.background = "dark"

  local styles = {
    dark = "",
    light = " Light",
  }

  for extra, info in pairs(M.extras) do
    package.loaded["solarized-osaka.extra." .. extra] = nil
    local plugin = require("solarized-osaka.extra." .. extra)
    for style, style_name in pairs(styles) do
      vim.o.background = style == "dark" and "dark" or "light"
      ---@diagnostic disable-next-line: missing-fields
      config.setup({ style = style, use_background = "auto", transparent = false })
      local colors = require("solarized-osaka.colors").setup({ transform = true })
      local fname = extra .. "/solarized_osaka_" .. style .. "." .. info.ext
      colors["_upstream_url"] = "https://github.com/craftzdog/solarized-osaka.nvim/raw/main/extras/" .. fname
      colors["_style_name"] = "Solarized Osaka" .. style_name
      write(plugin.generate(colors), fname)
    end
  end
end

return M
