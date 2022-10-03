-- tokyodark
-- local colorscheme = "tokyodark"
-- vim.g.tokyodark_transparent_background = true
-- vim.g.tokyodark_enable_italic_comment = true
-- vim.g.tokyodark_enable_italic = true
-- vim.g.tokyodark_color_gamma = "1.0"
-- vim.g.tokyonight_transparent_sidebar = true

-- tokyonight
local colorscheme = "tokyonight"
vim.g.tokyonight_style = "night" -- available: night, storm
vim.g.tokyonight_enable_italic = 1

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
