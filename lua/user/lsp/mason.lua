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
  "denols",
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
  "yamlls"
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
mason_lspconfig.setup {
  ensure_installed = servers,
  automatic_installation = true,
}
