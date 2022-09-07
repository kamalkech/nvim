local ufo_status_ok, ufo = pcall(require, "ufo")
if not ufo_status_ok then
  return
end

vim.wo.foldcolumn = "1"
vim.wo.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.wo.foldenable = true

require("ufo").setup({
	provider_selector = function(bufnr, filetype, buftype)
		return { "treesitter", "indent" }
	end,
})
