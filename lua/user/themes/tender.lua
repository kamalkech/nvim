local colorscheme = "tender"
vim.g.lightline = "tender"
vim.g.tokyonight_enable_italic = 1

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
