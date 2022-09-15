local colorscheme = "dracula"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

vim.g.dracula_transparent_bg = true
vim.g.dracula_colorterm = 0

local dracula = require("dracula")
dracula.setup({
  transparent_bg = true,
})
