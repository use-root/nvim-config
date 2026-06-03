local mason = require("mason")
local mason_lsp = require("mason-lspconfig")

mason.setup()

mason_lsp.setup({
	ensure_installed = {
		"ts_ls",
		"pyright",
		"lua_ls",
		"html",
		"cssls",
		"jsonls",
		"clangd",
		"jdtls",
	},
})
