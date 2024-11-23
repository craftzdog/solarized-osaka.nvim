local M = {}

-- map of plugin name to plugin extension
--- @type table<string, {ext:string, url:string, label:string}>
-- stylua: ignore
M.extras = {
  -- kitty = {ext = "conf", url = "https://sw.kovidgoyal.net/kitty/conf.html", label = "Kitty"},
  -- fish = {ext = "fish", url = "https://fishshell.com/docs/current/index.html", label = "Fish"},
  -- fish_themes = {ext = "theme", url = "https://fishshell.com/docs/current/interactive.html#syntax-highlighting", label = "Fish Themes"},
  -- alacritty = {ext = "yml", url = "https://github.com/alacritty/alacritty", label = "Alacritty"},
  -- wezterm = {ext = "toml", url = "https://wezfurlong.org/wezterm/config/files.html", label = "WezTerm"},
  -- tmux = {ext = "tmux", url = "https://github.com/tmux/tmux/wiki", label = "Tmux"},
  -- xresources = {ext = "Xresources", url = "https://wiki.archlinux.org/title/X_resources", label = "Xresources"},
  -- xfceterm = {ext = "theme", url = "https://docs.xfce.org/apps/terminal/advanced", label = "Xfce Terminal"},
  -- foot = {ext = "ini", url = "https://codeberg.org/dnkl/foot", label = "Foot"},
  -- tilix = {ext = "json", url = "https://github.com/gnunn1/tilix", label = "Tilix"},
  -- ISSUE: this line crashes the program, probably would fix if the other issues are fixed though.
  iterm = {ext = "itermcolors", url = "https://iterm2.com/", label = "iTerm"},
  -- lua = {ext = "lua", url = "https://www.lua.org", label = "Lua Table for testing"},
  -- sublime = {ext = "tmTheme", url = "https://www.sublimetext.com/docs/themes", label = "Sublime Text"},
  -- delta = {ext = "gitconfig", url = "https://github.com/dandavison/delta", label = "Delta"},
  -- terminator = {ext = "conf", url = "https://gnome-terminator.readthedocs.io/en/latest/config.html", label = "Terminator"},
  -- prism = {ext = "js", url = "https://prismjs.com", label = "Prism"},
  -- windows_terminal = {ext = "json", url = "https://aka.ms/terminal-documentation", label = "Windows Terminal"},
  -- zathura = {ext = "zathurarc", url = "https://pwmt.org/projects/zathura/", label = "Zathura"},
  -- dunst = {ext = "dunstrc", url = "https://dunst-project.org/", label = "Dunst"},
  -- gitui = {ext = "ron", url = "https://github.com/extrawurst/gitui", label = "GitUI"},
}

local function write(str, fileName)
  print("[write] extra/" .. fileName)
  vim.fn.mkdir(vim.fs.dirname("extras/" .. fileName), "p")
  local file = io.open("extras/" .. fileName, "w")
  if not file then
    return
  end
  file:write(str)
  file:close()
end

function M.read_file(file)
  local fd = assert(io.open(file, "r"))
  ---@type string
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

  -- map of style to style name
  -- Remove the unused styles
  local styles = {
    night = "",
    day = " Day",
  }

  for extra, info in pairs(M.extras) do
    package.loaded["solarized-osaka.extra." .. extra] = nil
    local plugin = require("solarized-osaka.extra." .. extra)
    -- Enable the background for day and night? I think this is needed.
    for style, style_name in pairs(styles) do
      if style == "night" then
        vim.o.background = "dark"
      elseif style == "day" then
        vim.o.background = "light"
      end
      config.setup({ style = style, use_background = "auto" })
      local colors = require("solarized-osaka.colors").setup({ transform = true })
      local fname = extra .. "/solarized_osaka_" .. style .. "." .. info.ext
      colors["_upstream_url"] = "https://github.com/craftzdog/solarized-osaka.nvim/raw/main/extras/" .. fname
      colors["_style_name"] = "Solarized Osaka" .. style_name
      write(plugin.generate(colors), fname)
    end
  end
end

return M
