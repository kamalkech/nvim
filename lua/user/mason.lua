require("mason").setup()

local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev
		"deno",
		"emmet-ls",
		"eslint-lsp",
		"eslint_d",
		"angular-language-server",
		"astro-language-server",
		"cssmodules-language-server",
		"dockerfile-language-server",
		"dot-language-server",
		"html-lsp",
		"css-lsp",
		"json-lsp",
		"prettier",
		"prettierd",
		"prisma-language-server",
		"svelte-language-server",
		"tailwindcss-language-server",
		"typescript-language-server",

		-- shell
		"shfmt",
		"shellcheck",
	},
})
-- mason_lspconfig.setup_handlers({
--   function(server_name)
--     require("lspconfig")[server_name].setup({
--       on_attach = function(client, bufnr)
--         require("shared").on_attach(client, bufnr)
--         require("illuminate").on_attach(client)
--       end,
--     })
--   end,
-- })

--

--
