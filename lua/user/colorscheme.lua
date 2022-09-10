-- -- local colorscheme = "darkplus"
-- local colorscheme = "tokyonight"
-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_transparent_sidebar = true

local colorscheme = "onedark"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
