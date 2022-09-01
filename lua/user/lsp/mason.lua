local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

local status_ok_1, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok_1 then
	return
end

local servers = {
	"angularls",
	"astro",
	"cssls",
	"cssmodules_ls",
	"dockerls",
	"dotls",
	"eslint",
	"emmet_ls",
	"graphql",
	"html",
	"jsonls",
	"quick_lint_js",
	"tsserver",

	-- mardown
	"sumneko_lua",
	"marksman",
	"prosemd_lsp",
	"remark_ls",
	"zk",

	-- php
	"intelephense",
	"phpactor",
	"psalm",

	"prismals",
	"rust_analyzer",
	"sqlls",
	"sqls",

	-- solidity
	"solang",
	"solc",

	"stylelint_lsp",
	"svelte",
	"taplo",
	"tailwindcss",
	"volar",
	"vuels",
	"yamlls",
}

local settings = {
	ui = {
		border = "rounded",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

mason.setup(settings)
mason_lspconfig.setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

for _, server in pairs(servers) do
	local opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "user.lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end
	lspconfig[server].setup(opts)
end
