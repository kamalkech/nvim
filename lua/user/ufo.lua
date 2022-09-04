vim.wo.foldcolumn = "1"
vim.wo.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.wo.foldenable = true

require("ufo").setup()
