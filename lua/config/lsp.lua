-- ================================
-- LSP GLOBAL CONFIG (MODERNO)
-- ================================

-- Opciones base cuando un LSP se conecta
local on_attach = function(_, bufnr)
	local opts = { buffer = bufnr, silent = true }

	-- Navegación básica LSP
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
end

-- Capacidades (para autocompletado futuro si lo agregas después)
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- ================================
-- SERVERS
-- ================================

local servers = {
	ts_ls = {}, -- JavaScript / TypeScript
	pyright = {}, -- Python
	lua_ls = { -- Lua (Neovim config)
		settings = {
			Lua = {
				diagnostics = { globals = { "vim" } },
			},
		},
	},
	html = {},
	cssls = {},
	jsonls = {},
	clangd = {}, -- C / C++
	jdtls = {}, -- Java
}

-- ================================
-- NUEVA API (Neovim 0.11+)
-- ================================

for server, config in pairs(servers) do
	vim.lsp.config[server] = vim.tbl_deep_extend("force", {
		on_attach = on_attach,
		capabilities = capabilities,
	}, config)

	vim.lsp.enable(server)
end
