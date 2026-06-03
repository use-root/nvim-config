return {

	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "mason.nvim" },
		config = function()
			require("config.mason-lsp")
		end,
	},

	{
		"neovim/nvim-lspconfig",
	},

	{
		"mattn/emmet-vim",
	},

	{
		"vhyrro/luarocks.nvim",
		priority = 1000,
		config = true,
	},

	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		config = function()
			require("config.conform")
		end,
	},
}
